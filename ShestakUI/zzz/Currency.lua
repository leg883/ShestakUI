local T, C, L, _ = unpack(select(2, ...))
if C.zzz.Currency ~= true then return end

----------------------------------------------------------------------------------------
--	config
----------------------------------------------------------------------------------------
local list = {
	--[[
	-- Old
	241,	-- Champion's Seal
	361,	-- Illustrious Jewelcrafter's Token
	390,	-- Conquest Points
	391,	-- Tol Barad Commendation
	392,	-- Honor Points
	395,	-- Justice Points
	396,	-- Valor Points
	402,	-- Ironpaw Token
	416,	-- Mark of the World Tree
	515,	-- Darkmoon Prize Ticket
	61,		-- Dalaran Jewelcrafter's Token
	614,	-- Mote of Darkness
	615,	-- Essence of Corrupted Deathwing
	697,	-- Elder Charm of Good Fortune
	738,	-- Lesser Charm of Good Fortune
	752,	-- Mogu Rune of Fate
	776,	-- Warforged Seal
	777,	-- Timeless Coin
	789,	-- Bloody Coin
	81,		-- Epicurean's Award
	402,	-- Ironpaw Token
	384,	-- Dwarf Archaeology Fragment
	385,	-- Troll Archaeology Fragment
	393,	-- Fossil Archaeology Fragment
	394,	-- Night Elf Archaeology Fragment
	397,	-- Orc Archaeology Fragment
	398,	-- Draenei Archaeology Fragment
	399,	-- Vrykul Archaeology Fragment
	400,	-- Nerubian Archaeology Fragment
	401,	-- Tol'vir Archaeology Fragment	
	676,	-- Pandaren Archaeology Fragment
	677,	-- Mogu Archaeology Fragment
	754,	-- Mantid Archaeology Fragment
	]]

	-- WoD
	--821,	-- Draenor Clans Archaeology Fragment
	--828,	-- Ogre Archaeology Fragment
	--829,	-- Arakkoa Archaeology Fragment
	824,	-- Garrison Resources
	823,	-- Apexis Crystal (for gear, like the valors)
	994,	-- Seal of Tempered Fate (Raid loot roll)
	--980,	-- Dingy Iron Coins (rogue only, from pickpocketing)
	--944,	-- Artifact Fragment (PvP)
	1101,	-- Oil
	1129,	-- Seal of Inevitable Fate
	1166, 	-- Timewarped Badge (6.22)
} 
local BarBottom = true		--标题在下
local color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[T.class]

----------------------------------------------------------------------------------------
--	function
----------------------------------------------------------------------------------------
local function UpdateCurrency(self, event)
	self.icon = {}
	for i = 1, #list do 
		local _, amount, _, _, _, totalMax = GetCurrencyInfo(list[i]) 
		local icon = CreateFrame("Frame", nil, self) 
		icon:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT", 0, (40*i+3*(i+1))-40)
		icon:SetSize(16, 16)
		icon:CreateBackdrop("Default")
		
		icon.texture = icon:CreateTexture(nil, "ARTWORK") 
		icon.texture:SetAllPoints(icon) 
		icon.texture:SetTexCoord(.1, .9, .1, .9) 
		
		icon.Status = CreateFrame('StatusBar', nil, icon)
		icon.Status:CreateBackdrop("Default")
		icon.Status:SetStatusBarTexture(C.media.blank)
		if totalMax == 0 then
			icon.Status:SetMinMaxValues(0, amount)
		else
			icon.Status:SetMinMaxValues(0, totalMax)
		end
		icon.Status:SetValue(amount)
		icon.Status:SetStatusBarColor(color.r, color.g, color.b)
		icon.Status:SetSize(100, 2)
		icon.Status:ClearAllPoints()
		icon.Status:SetPoint("TOPLEFT", icon, "BOTTOMLEFT", 0, -7)
		
		--icon.spark = icon.Status:CreateTexture(nil, 'OVERLAY', nil)
		--icon.spark:SetTexture([[Interface\CastingBar\UI-CastingBar-Spark]])
		--icon.spark:SetSize(10, 10)
		--icon.spark:SetBlendMode('ADD')
		--icon.spark:SetPoint('CENTER', icon.Status:GetStatusBarTexture(), 'RIGHT')

		icon.text = icon.Status:CreateFontString(nil, 'OVERLAY')
		icon.text:SetPoint("LEFT", icon, "RIGHT", 10, 0)
		icon.text:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
		icon.text:SetShadowOffset(1, -1)
		icon.text:SetShadowColor(0, 0, 0, .7)
		
		self.icon[i] = icon 
	end 

	local GetCurrencyInfo = GetCurrencyInfo
	for i = 1, #list do 
		local label, _, icon = GetCurrencyInfo(list[i]) 
		self.icon[i].texture:SetTexture(icon) 
		self.icon[i]:SetScript("OnEnter", function() 
			_G["GameTooltip"]:ClearLines() 
			_G["GameTooltip"]:SetOwner(self.icon[i], "ANCHOR_LEFT") 
			_G["GameTooltip"]:AddLine(label)
			_G["GameTooltip"]:Show() 
		end)
		self.icon[i]:SetScript("OnLeave", function() 
			_G["GameTooltip"]:Hide() 
		end) 
	end 

	for i = 1, #list do 
		local _, amount, _, _, _, totalMax = GetCurrencyInfo(list[i])
		if totalMax == 0 then
			self.icon[i].text:SetText(format('%s', amount))
		else
			self.icon[i].text:SetText(format('%s / %s', amount, totalMax))
		end
	end
end

----------------------------------------------------------------------------------------
--	main
----------------------------------------------------------------------------------------
local title = CreateFrame("Button", "Currency_title", UIParent)
title:RegisterEvent("ADDON_LOADED")
title:SetScript("OnEvent",function(self, event)
	self:UnregisterEvent("ADDON_LOADED")

	self:SetSize(100, 10)
	self:SetPoint("CENTER")
	self:SetMovable(true)
	self:RegisterForDrag("LEFTBUTTON")
	self:SetScript("OnDragStart", self.StartMoving)
	self:SetScript("OnDragStop", self.StopMovingOrSizing)

	self.text = self:CreateFontString(nil, "ARTWORK")
	self.text:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")
	self.text:SetPoint("LEFT")
	self.text:SetText("常用货币")
	self.text:SetTextColor(color.r, color.g, color.b)

	local Currency = CreateFrame("Frame", "Currency_frame", title)
	Currency:Hide()
	if BarBottom then
		Currency:SetPoint("BOTTOMLEFT", title, "BOTTOMLEFT", 0, 20)
	else
		Currency:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -20)
	end
	Currency:SetSize(100, (#list-1)*45)

	Currency:RegisterEvent('PLAYER_ENTERING_WORLD')
	Currency:RegisterEvent("CURRENCY_DISPLAY_UPDATE")
	Currency:RegisterEvent('PLAYER_HONOR_GAIN')
	Currency:SetScript("OnEvent", UpdateCurrency)
	--Currency:SetScript("OnUpdate", UpdateCurrency)

	-- Collapse stuff
	self:SetScript("OnMouseDown", function()
		if Currency:IsShown() then
			Currency:Hide()
		else
			Currency:Show()
		end
	end)
	self:RegisterEvent("PLAYER_REGEN_DISABLED")
	self:RegisterEvent('PLAYER_REGEN_ENABLED')
	self:SetScript("OnEvent", function(self, event)
		if event == "PLAYER_REGEN_DISABLED" then
			Currency:Hide()
		end
	end)
end)