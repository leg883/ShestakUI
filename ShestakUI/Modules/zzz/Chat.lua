local T, C, L, _ = unpack(select(2, ...))

----------------------------------------------------------------------------------------
--	聊天內容自動滾動到底部
----------------------------------------------------------------------------------------
if C.zzz.Chat_ScrollDown == true then
	local Runtime = 20  -- Change this value if you want a different delay between your last scroll and the time the frame resets.  This value is in seconds.

	local frame, handlers, running = CreateFrame("Frame"), {}, {}
	frame.name = "TheLowDown"
	frame:Hide()

	frame:SetScript("OnUpdate", function (frame, elapsed)
		for name,v in pairs(handlers) do
			if running[name] then
				v.elapsed = v.elapsed + elapsed
				if v.elapsed >= v.rate then
					v.func(unpack(v))
					v.elapsed = 0
				end
			end
		end
	end)

	local function Register(name, func, rate, ...)
		handlers[name] = {
			name = name,
			func = func,
			rate = rate or 0,
			...
		}
	end

	local function Start(name)
		handlers[name].elapsed = 0
		running[name] = true
		frame:Show()
	end

	local function Stop(name)
		running[name] = nil
		if not next(running) then frame:Hide() end
	end

	local scrolldowns = {}
	local delay = Runtime  

	local function ResetFrame(name, frame)
		Stop(name.."DownTimeout")
		Start(name.."DownTick")
	end

	local function ScrollOnce(name, frame)
		if frame:AtBottom() then Stop(name.."DownTick")
		else scrolldowns[name](frame) end
	end

	local _G = getfenv(0)
	local funcs = {"ScrollUp", "ScrollDown", "ScrollToTop", "PageUp", "PageDown"}

	for i = 1, NUM_CHAT_WINDOWS do
		local name = "ChatFrame" .. i
		local frame = _G[name]
		scrolldowns[name] = frame.ScrollDown
		Register(name.."DownTick", ScrollOnce, 0.1, name, frame)
		Register(name.."DownTimeout", ResetFrame, delay, name, frame)
		for _,func in ipairs(funcs) do
			local orig = frame[func]
			frame[func] = function(...)
				Stop(name.."DownTick")
				Start(name.."DownTimeout", 1)
				orig(...)
			end
		end
	end
end


---------------------------------------------------------------
-- 移动/隐藏聊天输入框语言按鈕
---------------------------------------------------------------
if C.zzz.Chat_HideLanguage == true then
	local f = CreateFrame("Frame")
	f:RegisterEvent("PLAYER_ENTERING_WORLD") 
	f:SetScript("OnEvent", function(self, event, ...)
		-- 修改頻道保持
		ChatTypeInfo.YELL.sticky = 0
		ChatTypeInfo.RAID_WARNING.sticky = 0
		ChatTypeInfo.WHISPER.sticky = 0
		ChatTypeInfo.BN_WHISPER.sticky = 0
		ChatTypeInfo.CHANNEL.sticky = 0
	
		-- 移动/隐藏聊天输入框语言按鈕
		for i = 1, NUM_CHAT_WINDOWS do
			_G[format("ChatFrame%sEditBoxLanguage", i)]:ClearAllPoints()
			_G[format("ChatFrame%sEditBoxLanguage", i)]:SetPoint("right", ChatFrame1EditBox, "LEFT", 17, 0)
			_G[format("ChatFrame%sEditBoxLanguage", i)]:SetAlpha(0) 
		end
		
		-- 聊天“發送給”改為“TO”
        CHAT_WHISPER_INFORM_GET = "To %s:\32"
        CHAT_BN_WHISPER_INFORM_GET = "To %s:\32"
		
		--简化各种系统提示字符串
		LOOT_ITEM = "%s + %s"
		LOOT_ITEM_BONUS_ROLL = "%s + %s (bonus)"
		LOOT_ITEM_BONUS_ROLL_MULTIPLE = "%s + %sx%d (bonus)"
		LOOT_ITEM_BONUS_ROLL_SELF = "+ %s (bonus)"
		LOOT_ITEM_BONUS_ROLL_SELF_MULTIPLE = "+ %sx%d (bonus)"
		LOOT_ITEM_MULTIPLE = "%s + % sx%d"
		LOOT_ITEM_PUSHED = "%s + %s"
		LOOT_ITEM_PUSHED_MULTIPLE = "%s + %sx%d"
		LOOT_ITEM_SELF = "+ %s"
		LOOT_ITEM_SELF_MULTIPLE = "+ %s x%d"
		LOOT_ITEM_PUSHED_SELF = "+ %s"
		LOOT_ITEM_PUSHED_SELF_MULTIPLE = "+ %s x%d"
		LOOT_MONEY = "|cff00a956+|r |cffffffff%s"
		YOU_LOOT_MONEY = "|cff00a956+|r |cffffffff%s"
		LOOT_MONEY_SPLIT = "|cff00a956+|r |cffffffff%s"
		LOOT_ROLL_ALL_PASSED = "|HlootHistory:%d|h[Loot]|h: All passed on %s"
		LOOT_ROLL_PASSED_AUTO = "%s passed %s (auto)"
		LOOT_ROLL_PASSED_AUTO_FEMALE = "%s passed %s (auto)"
		LOOT_ROLL_PASSED_SELF = "|HlootHistory:%d|h[Loot]|h: passed %s"
		LOOT_ROLL_PASSED_SELF_AUTO = "|HlootHistory:%d|h[Loot]|h: passed %s (auto)"
		-- 金银铜用图标表示
		COPPER_AMOUNT = "%d\124TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0\124t"
		SILVER_AMOUNT = "%d\124TInterface\\MoneyFrame\\UI-SilverIcon:0:0:2:0\124t"
		GOLD_AMOUNT = "%d\124TInterface\\MoneyFrame\\UI-GoldIcon:0:0:2:0\124t"
		-- Add quality colour for Poor items
		LE_ITEM_QUALITY_COMMON = -1
		BAG_ITEM_QUALITY_COLORS[LE_ITEM_QUALITY_POOR] = { r = 0.61, g = 0.61, b = 0.61}
		-- Change Common from grey to black
		BAG_ITEM_QUALITY_COLORS[LE_ITEM_QUALITY_COMMON] = { r = 0, g = 0, b = 0}
		BAG_ITEM_QUALITY_COLORS[1] = { r = 0, g = 0, b = 0}
		
		
		if event == "PLAYER_ENTERING_WORLD" then 
			self:UnregisterEvent("PLAYER_ENTERING_WORLD")
			
		end
	end)
end

---------------------------------------------------------------
-- 輸入/bn直接發送通告
---------------------------------------------------------------
SLASH_BN1 = '/bn' 
function SlashCmdList.BN(msg, editbox) 
  BNSetCustomMessage(msg) 
end

---------------------------------------------------------------
-- 加入大脚世界频道
---------------------------------------------------------------
if C.zzz.Chat_BigFoot == true then
	local f = CreateFrame("Frame")
	f:RegisterEvent("PLAYER_LOGIN")
	f:SetScript("OnEvent",function(self, event)
		f:UnregisterEvent("PLAYER_LOGIN")
		
		JoinPermanentChannel("大脚世界频道", nil, 1)
		ChatFrame_AddChannel(ChatFrame1, "大脚世界频道")
	end)
end