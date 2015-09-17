local T, C, L, _ = unpack(select(2, ...))
if C.zzz.Currency ~= true then return end

----------------------------------------------------------------------------------------
--	常用货币显示
----------------------------------------------------------------------------------------
local Currencyframe = CreateFrame("Button", "Currencyframe", UIParent)
--Currencyframe:CreateBackdrop()
Currencyframe:RegisterEvent("ADDON_LOADED")
Currencyframe:SetScript("OnEvent",function(self, event)
	
	local Currency = {
		390,
		392,
		994,	--钢化命运印记
		1129,	--既定命运徽记
		823,	--埃匹希斯水晶
		824,	--要塞物资
		1101,	--原油
	} 
	
	local BarBottom = true		--标题在下
	
	self:UnregisterEvent("ADDON_LOADED")
	self:SetPoint("CENTER")
	self:SetSize(100, 10)
	self:SetMovable(true)
	--self:IsUserPlaced(true)
	--self:SetClampedToScreen(true)
	self:RegisterForDrag("LeftButton")
	self:SetScript("OnDragStart", self.StartMoving)
	self:SetScript("OnDragStop", self.StopMovingOrSizing)
	
	local color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[T.class]
	local title = self:CreateFontString(nil, "ARTWORK")
	title:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")
	title:SetPoint("LEFT")
	title:SetText("常用货币")
	title:SetTextColor(color.r, color.g, color.b)
	
	local f = CreateFrame("Frame", nil, self)
	f:Hide()
	if BarBottom then
		f:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 10)
	else
		f:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, 0)
	end
	f:SetSize(100, 300)
	--f:CreateBackdrop()

	f.icon = {} 
	for i = 1, #Currency do 
		local icon = CreateFrame("Frame", nil, f) 
		icon:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 0, 25*i+3*(i+1))
		icon:SetSize(16, 16)
		icon.texture = icon:CreateTexture(nil, "ARTWORK") 
		icon.texture:SetAllPoints(icon) 
		icon.texture:SetTexCoord(.1, .9, .1, .9) 
		icon.text = icon:CreateFontString() 
		icon.text:SetPoint("LEFT", icon, "RIGHT", 3, 0) 
		icon.text:SetFont(STANDARD_TEXT_FONT, 14, "OUTLINE") 
		icon.text:SetShadowOffset(1, 1) 
		icon.text:SetShadowColor(0, 0, 0, .7) 
		f.icon[i] = icon 
	end 

	local GetCurrencyInfo, select, sub = GetCurrencyInfo, select, string.sub 
	for i = 1, #Currency do 
		local label, _, icon = GetCurrencyInfo(Currency[i]) 
		f.icon[i].texture:SetTexture(icon) 
		f.icon[i]:SetScript("OnEnter", function() 
			_G["GameTooltip"]:ClearLines() 
			_G["GameTooltip"]:SetOwner(f.icon[i], "ANCHOR_LEFT") 
			_G["GameTooltip"]:AddLine(sub(label, 1, 6)) 
			_G["GameTooltip"]:Show() 
		end)
		f.icon[i]:SetScript("OnLeave", function() 
			_G["GameTooltip"]:Hide() 
		end) 
	end 

	f:RegisterEvent("CURRENCY_DISPLAY_UPDATE") 
	f:SetScript("OnEvent", function() 
		for i = 1, #Currency do 
			f.icon[i].text:SetText(select(2, GetCurrencyInfo(Currency[i]))) 
		end 
	end)
	
	-- Collapse stuff
	self:SetScript("OnMouseDown", function(self) 
		if f:IsShown() then
			f:Hide()
		else
			f:Show()
		end
	end)
	
	self:RegisterEvent("PLAYER_REGEN_ENABLED")
	self:RegisterEvent("PLAYER_REGEN_DISABLED")
	self:SetScript("OnEvent", function(self, event)
		if event == "PLAYER_REGEN_ENABLED" then
			f:Show()
		elseif event == "PLAYER_REGEN_DISABLED" then
			f:Hide()
		end
	end)
end)