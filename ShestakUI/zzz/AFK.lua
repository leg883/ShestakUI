local T, C, L, _ = unpack(select(2, ...))
if C.zzz.AFK ~= true then return end

----------------------------------------------------------------------------------------------------
-- Lists
----------------------------------------------------------------------------------------------------
local tpis = {
	"点击小地图上的时钟可以打开日历。",
	"如何把团队框架显示为职业颜色？插件设置→单位框体→样式→经典主题",
	"如何显示独立的施法条？插件设置→单位框体→施法条→独立的玩家施法条",
	"如何只显示治疗模式的团队框架？插件设置→团队框架→切换→禁用自动切换并选择治疗模式",
	"如何把动作条1和2交换位置？插件设置→动作条→主动做条→将动作条1放在动作条2上面",
	"如何改变特定怪物姓名版的颜色？插件设置→单位姓名版→自定义颜色",
	"如何改变小地图的大小？插件设置→其他→缩放按钮高度",
	"命令：/rl - 重载界面 ",
	"命令：/hb - 按键绑定模式",
	"SHIFT+左键 - 设置焦点。点击单位框体也可以哦！",
	"ALT+单击物品 - 快速分解、研磨、选矿、开锁",
	"激活输入框时点击Tab可以切换聊天频道",
	"字体文件在哪里？Interface\\AddOns\\Aurora\\media\\font.ttf(主要字体)，Interface\\AddOns\\AltzUI\\media\\number.ttf(一些时间文本用的字体)",
 }
 
 local stats = {
	60,		-- Total deaths
	97,		-- Daily quests completed
	98,		-- Quests completed
	107,	-- Creatures killed
	112,	-- Deaths from drowning
	114,	-- Deaths from falling
	319,	-- Duels won
	320,	-- Duels lost
	321,	-- Total raid and dungeon deaths
	326,	-- Gold from quest rewards
	328,	-- Total gold acquired
	333,	-- Gold looted
	334,	-- Most gold ever owned
	338,	-- Vanity pets owned
	339,	-- Mounts owned
	342,	-- Epic items acquired
	349,	-- Flight paths taken
	377,	-- Most factions at Exalted
	588,	-- Total Honorable Kills
	837,	-- Arenas won
	838,	-- Arenas played
	839,	-- Battlegrounds played
	840,	-- Battlegrounds won
	919,	-- Gold earned from auctions
	931,	-- Total factions encountered
	932,	-- Total 5-player dungeons entered
	933,	-- Total 10-player raids entered
	934,	-- Total 25-player raids entered
	1042,	-- Number of hugs
	1045,	-- Total cheers
	1047,	-- Total facepalms
	1065,	-- Total waves
	1066,	-- Total times LOL'd
	1088,	-- Kael'thas Sunstrider kills (Tempest Keep)
	1149,	-- Talent tree respecs
	1197,	-- Total kills
	1098,	-- Onyxia kills (Onyxia's Lair)
	1198,	-- Total kills that grant experience or honor
	1487,	-- Killing Blows
	1491,	-- Battleground Killing Blows
	1518,	-- Fish caught
	1716,	-- Battleground with the most Killing Blows
	4687,	-- Victories over the Lich King (Icecrown 25 player)
	5692,	-- Rated battlegrounds played
	5694,	-- Rated battlegrounds won
	6167,	-- Deathwing kills (Dragon Soul)
	7399,	-- Challenge mode dungeons completed
	8278,	-- Pet Battles won at max level
	8632,	-- Garrosh Hellscream (LFR Siege of Orgrimmar)
	
	--[[ -- WOD 副本成就
	9297,	-- Brackenspore kills (Normal Highmaul)
	9298,	-- Brackenspore kills (Heroic Highmaul)
	9283,	-- Kargath Bladefist defeats (Normal Highmaul)
	9284,	-- Kargath Bladefist defeats (Heroic Highmaul)
	9287,	-- The Butcher kills (Normal Highmaul)
	9288,	-- The Butcher kills (Heroic Highmaul)
	9292,	-- Tectus kills (Normal Highmaul)
	9293,	-- Tectus kills (Heroic Highmaul)
	9302,	-- Twin Ogron kills (Normal Highmaul)
	9303,	-- Twin Ogron kills (Heroic Highmaul)
	9309,	-- Ko'ragh kills (Normal Highmaul)
	9310,	-- Ko'ragh kills (Heroic Highmaul)
	9313,	-- Imperator Mar'gok kills (Normal Highmaul)
	9314,	-- Imperator Mar'gok kills (Heroic Highmaul)
	9317,	-- Gruul kills (Normal Blackrock Foundry)
	9318,	-- Gruul kills (Heroic Blackrock Foundry)
	9321,	-- Oregorger kills (Normal Blackrock Foundry)
	9322,	-- Oregorger kills (Heroic Blackrock Foundry)
	9327,	-- Hans'gar and Franzok kills (Normal Blackrock Foundry)
	9328,	-- Hans'gar and Franzok kills (Heroic Blackrock Foundry)
	9331,	-- Flamebender Ka'graz kills (Normal Blackrock Foundry)
	9332,	-- Flamebender Ka'graz kills (Heroic Blackrock Foundry)
	9336,	-- Beastlord Darmac kills (Normal Blackrock Foundry)
	9337,	-- Beastlord Darmac kills (Heroic Blackrock Foundry)
	9340,	-- Operator Thogar kills (Normal Blackrock Foundry)
	9341,	-- Operator Thogar kills (Heroic Blackrock Foundry)
	9350,	-- Blast Furnace destructions (Normal Blackrock Foundry)
	9351,	-- Blast Furnace destructions (Heroic Blackrock Foundry)
	9355,	-- Kromog kills (Normal Blackrock Foundry)
	9356,	-- Kromog kills (Heroic Blackrock Foundry)
	9359,	-- Iron Maidens kills (Normal Blackrock Foundry)
	9360,	-- Iron Maidens kills (Heroic Blackrock Foundry)
	9363,	-- Warlord Blackhand kills (Normal Blackrock Foundry)
	9364,	-- Warlord Blackhand kills (Heroic Blackrock Foundry)
	]]
	9430,	-- Draenor dungeons completed (final boss defeated)
	9561,	-- Draenor raid boss defeated the most
	9558,	-- Draenor raids completed (final boss defeated)
}

local weekday = {
	[1] = "星期一",
	[2] = "星期二",
	[3] = "星期三",
	[4] = "星期四",
	[5] = "星期五",
	[6] = "星期六",
	[7] = "星期日",
}
----------------------------------------------------------------------------------------------------
-- Functions
----------------------------------------------------------------------------------------------------
local welcome = true		--登陆时显示AFK界面
local color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[T.class]

local function CreateBD(f, a)
	f:SetBackdrop({
		bgFile = C.media.blank,
		edgeFile = C.media.blank,
		edgeSize = 1,
	})
	f:SetBackdropColor(0, 0, 0, a)
	f:SetBackdropBorderColor(0, 0, 0)
end

local function SetBD(f, x, y, x2, y2)
	local bg = CreateFrame("Frame", nil, f)
	if not x then
		bg:SetPoint("TOPLEFT")
		bg:SetPoint("BOTTOMRIGHT")
	else
		bg:SetPoint("TOPLEFT", x, y)
		bg:SetPoint("BOTTOMRIGHT", x2, y2)
	end
	bg:SetFrameLevel(f:GetFrameLevel()-1)
	CreateBD(bg, 0.7)
end

local function createtext(f, layer, fontsize, flag, justifyh)
	local text = f:CreateFontString(nil, layer)
	text:SetFont(STANDARD_TEXT_FONT, fontsize, flag)
	text:SetJustifyH(justifyh)
	text:SetTextColor(color.r, color.g, color.b)
	return text
end

local function ColorGradient(perc, ...)-- http://www.wowwiki.com/ColorGradient
    if (perc > 1) then
        local r, g, b = select(select('#', ...) - 2, ...) return r, g, b
    elseif (perc < 0) then
        local r, g, b = ... return r, g, b
    end

    local num = select('#', ...) / 3

    local segment, relperc = math.modf(perc*(num-1))
    local r1, g1, b1, r2, g2, b2 = select((segment*3)+1, ...)

    return r1 + (r2-r1)*relperc, g1 + (g2-g1)*relperc, b1 + (b2-b1)*relperc
end

local function UpdatePet(f)
	local creatureID
	f.t = 0
	function f:getID()
		local PetNumber = max(C_PetJournal.GetNumPets(), 1)
		local randomIndex = random(1 ,PetNumber)
		local speciesID = select(2, C_PetJournal.GetPetInfoByIndex(randomIndex))
		local petType = select(3, C_PetJournal.GetPetInfoBySpeciesID(speciesID))
		local creatureDisplayID = select(12, C_PetJournal.GetPetInfoBySpeciesID(speciesID))
		creatureID = creatureDisplayID
	end

	function f:CreatePet(creatureID)
		f:SetDisplayInfo(creatureID)
		f:SetDoBlend(false)
		f:SetAnimation(0, -1)
		f:SetRotation(-MODELFRAME_DEFAULT_ROTATION)
	end

	f:getID()
	f:CreatePet(creatureID)
	f:SetScript("OnUpdate", function(self, elapsed)
		f.t = f.t + elapsed
		if f.t > 10 then
			f:getID()
			f:CreatePet(creatureID)
			f.t = 0
		end
		--f:SetFacing(self:GetFacing() + math.pi * elapsed / 5)
	end)
end

----------------------------------------------------------------------------------------------------
-- AFK Panel
----------------------------------------------------------------------------------------------------
local AFK = CreateFrame("Frame", "AFK", WorldFrame)
AFK:SetFrameStrata("FULLSCREEN")
AFK:SetPoint("BOTTOMLEFT",WorldFrame,"BOTTOMLEFT",-5,-5)
AFK:SetPoint("TOPRIGHT",WorldFrame,"BOTTOMRIGHT",5,60)
SetBD(AFK)
AFK:Hide()

local top = CreateFrame("Frame","AFK toppanel", AFK)
top:SetFrameStrata("FULLSCREEN")
top:SetPoint("TOPLEFT", WorldFrame, "TOPLEFT", -5, 5)
top:SetPoint("BOTTOMRIGHT", WorldFrame, "TOPRIGHT", 5,-60)
SetBD(top)
top:RegisterEvent("PLAYER_LOGIN")

top.wowlogo = top:CreateTexture(nil, 'OVERLAY')
top.wowlogo:SetTexture("Interface\\Glues\\Common\\GLUES-WOW-WODLOGO")
top.wowlogo:SetPoint("TOP", top, "TOP", 0, -5)
top.wowlogo:SetSize(200, 100)

top.Date = createtext(top, "OVERLAY", 9, "OUTLINE", "RIGHT")
top.Date:SetPoint("RIGHT", top, "RIGHT", -25, 10)
top:SetScript("OnEvent", function(self)
	local curWeekday, curMonth, curDay, curYear = CalendarGetDate()
	top.Date:SetText(format("%d年 %d月 %d日  %s", curYear, curMonth, curDay, weekday[curWeekday]))
end)

top.Time = createtext(top, "OVERLAY", 20, "OUTLINE", "RIGHT")
top.Time:SetPoint("RIGHT", top, "RIGHT", -25, -10)
top:SetScript("OnUpdate",function(self, elapsed)
	top.Time:SetText(format("%s : %s : %s", date("%H"), date("%M"), date("%S")))
end)

local PlayerModel = CreateFrame("PlayerModel", "AFK PlayerModel", AFK, "ModelTemplate")
PlayerModel:SetSize(380, 380)
PlayerModel:SetPoint("BOTTOMLEFT", AFK, "BOTTOMLEFT", 0, 30) 

local factionGroup = UnitFactionGroup("player")
PlayerModel.faction = PlayerModel:CreateTexture(nil, 'OVERLAY')
PlayerModel.faction:SetPoint("LEFT", AFK, "LEFT", 80, 5)
PlayerModel.faction:SetTexture("Interface\\Timer\\"..factionGroup.."-Logo")
PlayerModel.faction:SetSize(60, 60)

PlayerModel.name = createtext(PlayerModel, "OVERLAY", 10, "OUTLINE", "CENTER")
PlayerModel.name:SetPoint("TOP", PlayerModel, "BOTTOM", 0, 20)
PlayerModel.name:SetText(T.name.." - "..T.realm.."\n"..LEVEL.." "..T.level.." "..T.race)

local petmodel = CreateFrame("PlayerModel", "AFK petmodel", AFK, "ModelTemplate")
petmodel:SetSize(173, 135)
petmodel:SetPoint("BOTTOMRIGHT", AFK, "BOTTOMRIGHT", -50, 25)

petmodel.text = createtext(petmodel, "OVERLAY", 13, "OUTLINE", "RIGHT")
petmodel.text:SetPoint("CENTER")
petmodel.text:SetText("")

local tip = CreateFrame("Frame", "AFK tips", AFK)
tip:SetHeight(50)
tip:SetPoint("LEFT", AFK, "LEFT", 200, 0)
tip:SetPoint("RIGHT", AFK, "RIGHT", -200, 0)
tip:Hide()

tip.text = createtext(tip, "OVERLAY", 8, "OUTLINE", "CENTER")
tip.text:SetPoint("TOP", tip, "TOP", 0, -5)
tip.text:SetPoint("LEFT")
tip.text:SetPoint("RIGHT")

local current_tip = 1
local function SetRandomTip()
	local index = random(1 , #tpis)
	tip.text:SetText(tpis[index])
	current_tip = index
end

local function SetTip(index)
	tip.text:SetText(tpis[index])
	current_tip = index
end

local function Last_tip()
	if current_tip == 1 then
		SetTip(#tpis)
	else
		SetTip(current_tip - 1)
	end
end

local function Next_tip()
	if current_tip == #tpis then
		SetTip(1)
	else
		SetTip(current_tip + 1)
	end
end

StaticPopupDialogs["hideAFKtips"] = {
	text = "隐藏提示",
	button1 = ACCEPT, 
	hideOnEscape = 1, 
	whileDead = true,
	preferredIndex = 3,
}

local function Hide_tips()
	tip:Hide()
	StaticPopup_Show("hideAFKtips")
	fadein()
end

local nextBtn = CreateFrame("Button", "NextBtn", tip, "UIPanelButtonTemplate")
nextBtn:SetSize(50,15)
nextBtn:SetPoint("BOTTOM", tip, "BOTTOM", 0, 0)
nextBtn:SetText("下一条")
nextBtn:Hide()
nextBtn:StripTextures()
nextBtn:SetTemplate("Overlay")
_G["NextBtnText"]:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
nextBtn:SetScript("OnClick", Next_tip)

local lastBtn = CreateFrame("Button", "LastBtn", tip, "UIPanelButtonTemplate")
lastBtn:SetSize(50,15)
lastBtn:SetPoint("RIGHT", nextBtn, "LEFT", -15, 0)
lastBtn:SetText("上一条")
lastBtn:Hide()
lastBtn:StripTextures()
lastBtn:SetTemplate("Overlay")
_G["LastBtnText"]:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
lastBtn:SetScript("OnClick", Last_tip)

local hideBtn = CreateFrame("Button", "HideBtn", tip, "UIPanelButtonTemplate")
hideBtn:SetSize(50,15)
hideBtn:SetPoint("LEFT", nextBtn, "RIGHT", 15, 0)
hideBtn:SetText("隐藏提示")
hideBtn:Hide()
hideBtn:StripTextures()
hideBtn:SetTemplate("Overlay")
_G["HideBtnText"]:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
hideBtn:SetScript("OnClick", Hide_tips)

local function ShowTipButtons()
	nextBtn:Show()
	lastBtn:Show()
	hideBtn:Show()
end

local function HideTipButtons()
	nextBtn:Hide()
	lastBtn:Hide()
	hideBtn:Hide()
end

tip:SetScript("OnEnter", ShowTipButtons)
nextBtn:SetScript("OnEnter", ShowTipButtons)
lastBtn:SetScript("OnEnter", ShowTipButtons)
hideBtn:SetScript("OnEnter", ShowTipButtons)
tip:SetScript("OnLeave", HideTipButtons)
tip:SetScript("OnHide", HideTipButtons)

----------------------------------------------------------------------------------------------------
-- Stats Display
----------------------------------------------------------------------------------------------------
-- Create random stats
local function createStatMsg()
	local id = random(1 , #stats)
	local _, name = GetAchievementInfo(id)
	local result = GetStatistic(id)
	if result == "--" then result = NONE end
	return format("%s  |cfff0ff00%s|r", name, result)
end

local DisplayTime = 5
local Displaytotal = 0
local function UpdateStatMsg(self, elapsed)
	Displaytotal = Displaytotal + elapsed
	if Displaytotal >= DisplayTime then
		local StatMsg = createStatMsg()
		self:AddMessage(StatMsg)
		UIFrameFadeIn(self, 1, 0, 1)
		Displaytotal = 0
	end
end

-- Random stats decor (taken from install routine)
local StatMsg = CreateFrame("Frame", "AFK StatMsg", AFK)
StatMsg:SetSize(300, 30)
StatMsg:SetPoint("CENTER", UIParent, "CENTER", 0, 200)

StatMsg.bg = StatMsg:CreateTexture(nil, 'BACKGROUND')
StatMsg.bg:SetTexture("Interface\\LevelUp\\LevelUpTex")
StatMsg.bg:SetPoint('BOTTOM')
StatMsg.bg:SetSize(300, 30)
StatMsg.bg:SetTexCoord(0.00195313, 0.63867188, 0.03710938, 0.23828125)
StatMsg.bg:SetVertexColor(1, 1, 1, 0.7)

StatMsg.lineTop = StatMsg:CreateTexture(nil, 'BACKGROUND')
StatMsg.lineTop:SetDrawLayer('BACKGROUND', 2)
StatMsg.lineTop:SetTexture("Interface\\LevelUp\\LevelUpTex")
StatMsg.lineTop:SetPoint("TOP")
StatMsg.lineTop:SetSize(300, 7)
StatMsg.lineTop:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)

StatMsg.lineBottom = StatMsg:CreateTexture(nil, 'BACKGROUND')
StatMsg.lineBottom:SetDrawLayer('BACKGROUND', 2)
StatMsg.lineBottom:SetTexture("Interface\\LevelUp\\LevelUpTex")
StatMsg.lineBottom:SetPoint("BOTTOM")
StatMsg.lineBottom:SetSize(300, 7)
StatMsg.lineBottom:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)

-- Random stats frame
StatMsg.info = CreateFrame("ScrollingMessageFrame", nil, StatMsg)
StatMsg.info:SetFont(STANDARD_TEXT_FONT, 12, "THICKOUTLINE")
StatMsg.info:SetPoint("CENTER", StatMsg, "CENTER", 0, 7)
StatMsg.info:SetSize(300, 30)
--StatMsg.info:AddMessage(format("|cffb3b3b3%s|r", "成就展示"))
StatMsg.info:SetFading(true)
StatMsg.info:SetFadeDuration(1)
StatMsg.info:SetTimeVisible(4)
StatMsg.info:SetJustifyH("CENTER")
StatMsg.info:SetTextColor(0.7, 0.7, 0.7)
StatMsg.info:SetScript("OnUpdate", UpdateStatMsg)

----------------------------------------------------------------------------------------------------
-- FadeIn / FadeOut Control
----------------------------------------------------------------------------------------------------
local function fadeout()
	Minimap:Hide()
	UIParent:SetAlpha(0)
	UIFrameFadeIn(AFK, 2, 0, 1)

	SetRandomTip()
	tip:Show()
	
	PlayerModel:SetCamera(1)
	PlayerModel:SetUnit("player")
	PlayerModel:SetAnimation(69)
	PlayerModel:SetScript("OnUpdate", function(self, elapsed)
		self:SetFacing(self:GetFacing() + math.pi * elapsed / 5)
	end)
	UpdatePet(petmodel)
	
	AFK.t = 0
	AFK:EnableKeyboard(true)
end

local function fadein()
	tip:Hide()
	Minimap:Show()
	UIFrameFadeIn(UIParent, 2, 0, 1)
	UIFrameFadeOut(AFK, 2, 1, 0)

	AFK:SetScript("OnUpdate",  function(self, e)
		self.t = self.t + e
		if self.t > 2 then
			self:Hide()
			self:SetScript("OnUpdate", nil)
			self.t = 0
		end
	end)
	AFK:EnableKeyboard(false)
end

AFK:SetScript("OnKeyDown", function(self, key) 
	fadein()
end)

AFK:SetScript("OnMouseDown", function(self) 
	fadein()
end)

AFK:SetScript("OnEvent",function(self, event) 
	if event == "PLAYER_ENTERING_WORLD" then
		if welcome == true then
			fadeout()
		end
		
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	elseif event == "PLAYER_FLAGS_CHANGED" then
		if UnitIsAFK("player") then
			fadeout()
		end
	end
end)

AFK:RegisterEvent("PLAYER_ENTERING_WORLD")
AFK:RegisterEvent("PLAYER_FLAGS_CHANGED")

----------------------------------------------------------------------------------------------------
-- AFK Time
----------------------------------------------------------------------------------------------------
local isafk, hour, minute
local total = 0
local afk_minutes = 0
local afk_seconds = 0
local update = 0
local interval = 1.0

local afkpanel = CreateFrame("Frame", "afk time", top)
afkpanel:Hide()
afkpanel:SetSize(120, 60)
afkpanel:SetPoint("LEFT", top, "LEFT", 25, 0)

afkpanel.text = createtext(afkpanel, "OVERLAY", 9, "OUTLINE", "LEFT")
afkpanel.text:SetText("您现在处于暂离状态")
afkpanel.text:SetPoint("LEFT", afkpanel, "LEFT", 0, 10)

afkpanel.timer = createtext(afkpanel, "OVERLAY", 20, "OUTLINE", "LEFT")
afkpanel.timer:SetText("0:00")
afkpanel.timer:SetPoint("LEFT", afkpanel, "LEFT", 0, -10)

function frame_OnLoad(self)
    self:SetScript("OnEvent", frame_OnEvent)
	self:RegisterEvent("PLAYER_FLAGS_CHANGED")
end

function frame_OnEvent(self, event, ...)
	if (event == "PLAYER_FLAGS_CHANGED") then
		if UnitIsAFK("player") then
			afkpanel:Show()
            isafk = true
            hour, minute = GetGameTime()
            afkpanel:SetScript("OnUpdate", frame_OnUpdate)
        else
			afkpanel:Hide()
            isafk = false
            total = 0
            afkpanel:SetScript("OnUpdate", nil)
		end
	end
end

function frame_OnUpdate(self, elapsed)
	if isafk == true then
		update = update + elapsed
		if update > interval then
			total = total + 1
			frame_ParseSeconds(total)
			update = 0
		end
	end
end

function frame_ParseSeconds(num)
	local minutes = afk_minutes
	local seconds = afk_seconds
	if num >= 60 then
		minutes = floor(num / 60)
		seconds = tostring(num - (minutes * 60))
		frame_DisplayTime(minutes, seconds)
	else
		minutes = 0
		seconds = num
        frame_DisplayTime(minutes, seconds)
	end
	afk_minutes = tostring(minutes)
	afk_seconds = tostring(seconds)
end

function frame_DisplayTime(minutes, seconds)
	afkpanel.timer:SetText(tostring(minutes)..":"..string.format("%02d", tostring(seconds)))
end

frame_OnLoad(afkpanel)