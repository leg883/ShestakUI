local T, C, _, _ = unpack(select(2, ...))

local frame = CreateFrame('Frame')
frame:SetScript('OnEvent', function(self, event, ...)
	frame[event](self, ...)
end)

-------------------------------------------------------------------------------
-- 稀有提示
-------------------------------------------------------------------------------
if C.zzz.Misc_VignetteAlert == true then
	local vignettes = {}

	frame:RegisterEvent("VIGNETTE_ADDED")
	function frame:VIGNETTE_ADDED(id)
		if id and not vignettes[id] then
			local x, y, name, icon = C_Vignettes.GetVignetteInfoFromInstanceID(id)
			local left, right, top, bottom = GetObjectIconTextureCoords(icon)
			
			PlaySoundFile("Sound\\Interface\\RaidWarning.wav")
			local str = "|TInterface\\MINIMAP\\OBJECTICONS:0:0:0:0:256:256:"..(left*256)..":"..(right*256)..":"..(top*256)..":"..(bottom*256).."|t"
			RaidNotice_AddMessage(RaidWarningFrame, str..(name or "Unknown").." ".."出现了！", ChatTypeInfo["RAID_WARNING"])
			print(str..name,"出现了！")
			vignettes[id] = true
		end
	end
end

-------------------------------------------------------------------------------
-- 随机召唤宠物
-------------------------------------------------------------------------------
if C.zzz.Misc_autopet == true then
	local function SummonPet(fav)
		C_Timer.After(3, function() 
			local active = C_PetJournal.GetSummonedPetGUID()
			if not active and not UnitOnTaxi("player") then		
				if fav then
					C_PetJournal.SummonRandomPet(false)
				else
					C_PetJournal.SummonRandomPet(true)
				end
			end		
		end)
	end


	frame:RegisterEvent("PLAYER_ENTERING_WORLD")
	frame:RegisterEvent("PLAYER_CONTROL_GAINED")
	frame:RegisterEvent("UNIT_EXITED_VEHICLE")
	frame:RegisterEvent("PLAYER_ALIVE")

	function frame:PLAYER_ENTERING_WORLD()
		SummonPet()
	end

	function frame:PLAYER_CONTROL_GAINED()
		SummonPet()
	end

	function frame:UNIT_EXITED_VEHICLE()
		SummonPet()
	end

	function frame:PLAYER_ALIVE()
		SummonPet()
	end
end

-------------------------------------------------------------------------------
-- Flash Taskbar
-------------------------------------------------------------------------------
if C.zzz.Misc_FlashTaskBar == true then
	local flashtimer = 0

	local function DoFlash()
		if (flashtimer + 5 < GetTime()) then
			FlashClientIcon()
			flashtimer = GetTime()
		end
	end

	local DF = _G ["DetailsFramework"]
	if DF then
		hooksecurefunc ("LFGDungeonReadyStatus_ResetReadyStates", function()
			DoFlash()
		end)

		hooksecurefunc ("PVPReadyDialog_Display", function()
			DoFlash()
		end)
		
		frame:RegisterEvent("READY_CHECK")
		frame:RegisterEvent("CHAT_MSG_ADDON")

		function frame:READY_CHECK()
			DoFlash()
		end
		
		function frame:CHAT_MSG_ADDON(prefix, msg)
			if prefix == "BigWigs" and msg:find("BWPull") then
				DoFlash()
			elseif prefix == "D4" and msg:find("PT") then
				DoFlash()
			end		
		end
	end
end

-------------------------------------------------------------------------------
-- 自动出售指定物品
-------------------------------------------------------------------------------
if C.zzz.Misc_AutoSell == true then
	local sell = {
		"亚麻布",
	}

	local f = CreateFrame("Frame")
	f:RegisterEvent("MERCHANT_SHOW")
	f:SetScript("OnEvent", function()
		local c = 0
		
		for i = 1, #sell do
			for b = 0, 4 do
				for s = 1, GetContainerNumSlots(b) do
					local l = GetContainerItemLink(b, s)
					if l then
						local p = select(11, GetItemInfo(l))*select(2, GetContainerItemInfo(b, s))
						local n = select(1, GetItemInfo(l))
						
						if sell[i] == n and p > 0 then
							UseContainerItem(b, s)
							PickupMerchantItem()
							c = c + p
						end
					end
				end
			end
		end

		if c > 0 then
			local g, s, c = math.floor(c/10000) or 0, math.floor((c%10000)/100) or 0, c%100
			DEFAULT_CHAT_FRAME:AddMessage("物品已出售,收入： ".." |cffffffff"..g.."|cffffc125g|r".." |cffffffff"..s.."|cffc7c7cfs|r".." |cffffffff"..c.."|cffeda55fc|r"..".",255,255,255)
		end
	end)
end

-------------------------------------------------------------------------------
-- 地图素材更换
-------------------------------------------------------------------------------
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
function frame:PLAYER_ENTERING_WORLD()
	WorldMapPlayerUpper:EnableMouse(false)   --取消世界地圖角色箭頭互動   
	WorldMapPlayerLower:EnableMouse(false)   --取消世界地圖角色箭頭互動   
	Minimap:SetArchBlobRingScalar(0)  --取消小地圖考古追蹤圓環
	Minimap:SetArchBlobRingAlpha(0)
	Minimap:SetQuestBlobRingScalar(0)  --取消小地圖任務追蹤圓環
	Minimap:SetQuestBlobRingAlpha(0)
	Minimap:SetPlayerTexture("Interface\\AddOns\\zUI\\Media\\Minimap\\Arrow1")	--小地圖玩家箭头
	
	CURRENTLY_EQUIPPED = "|cFFFF8000".."    "..CURRENTLY_EQUIPPED.."    ".."\n|r"	--染色“当前装备”字样颜色
end
