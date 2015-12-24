local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

----------------------------------------------------------------------------------------
-- UnitFrames based on oUF_Caellian(by Caellian)
----------------------------------------------------------------------------------------
local oUF = oUFShestakUI
--print(oUF)
----------------------------------------------------------------------------------------
local width, height, space = 217, 7, 7
-- ClassBarAnchor
local extclassbaranchor = CreateFrame("Button", "ExtClassBarAnchor", UIParent)
extclassbaranchor:SetFrameStrata("LOW")
--extclassbaranchor:CreateBackdrop()
extclassbaranchor:RegisterEvent("ADDON_LOADED")
extclassbaranchor:SetScript("OnEvent", function(self, event)
	self:UnregisterEvent("ADDON_LOADED")
	
	self:SetSize(width, 3*height+2*space)
	self:SetPoint("CENTER")
	self:SetMovable(true)
	self:RegisterForDrag("LEFTBUTTON")
	self:SetScript("OnDragStart", self.StartMoving)
	self:SetScript("OnDragStop", self.StopMovingOrSizing)
end)
	
-- Create layout
local function Shared(self, unit)
	-- Set our own colors
	self.colors = T.oUF_colors

	-- Register click
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)

	local unit = (unit and unit:find("arena%dtarget")) and "arenatarget"
	or (unit and unit:find("arena%d")) and "arena"
	or (unit and unit:find("boss%d")) and "boss" or unit

	-- Backdrop for every units
	self:CreateBackdrop("Default")
	self:SetFrameStrata("BACKGROUND")

	if 	unit == "player" then
	
		--Ext_PowerBar
		self.Power = CreateFrame("StatusBar", self:GetName().."_Power", extclassbaranchor)
		self.Power:SetSize(width, height)
		self.Power:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, 0)
		self.Power:SetStatusBarTexture(C.media.texture)
		self.Power:CreateBackdrop("Default", "Shadow")
		
		self.Power.frequentUpdates = true
		self.Power.colorDisconnected = true
		self.Power.colorTapping = true
		if C.unitframe.own_color == true then
			self.Power.colorClass = true
		else
			self.Power.colorPower = true
		end
		if C.unitframe.plugins_smooth_bar == true then
			self.Power.Smooth = true
		end
		self.Power.PreUpdate = T.PreUpdatePower
		self.Power.PostUpdate = T.PostUpdatePower
		
		self.Power.bg = self.Power:CreateTexture(nil, "BORDER")
		self.Power.bg:SetAllPoints()
		self.Power.bg:SetTexture(C.media.texture)
		if C.unitframe.own_color == true then
			self.Power.bg:SetVertexColor(C.unitframe.uf_color[1], C.unitframe.uf_color[2], C.unitframe.uf_color[3], 0.2)
		else
			self.Power.bg.multiplier = 0.2
		end
		self.Power.value = T.SetFontString(self.Power, C.font.unit_frames_font, C.font.unit_frames_font_size-1, C.font.unit_frames_font_style)
		self.Power.value:SetPoint("CENTER", self.Power, "CENTER", 0, 0)
		self.Power.value:SetJustifyH("CENTER")
		
		-- Holy Power bar
		if T.class == "PALADIN" then
			self.HolyPower = CreateFrame("Frame", self:GetName().."_HolyPowerBar", extclassbaranchor)
			self.HolyPower:CreateBackdrop("Default")
			self.HolyPower:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.HolyPower:SetSize(width, height)

			for i = 1, 5 do
				self.HolyPower[i] = CreateFrame("StatusBar", self:GetName().."_HolyPowerBar"..i, self.HolyPower)
				self.HolyPower[i]:SetSize((width - 4) / 5, height)
				if i == 1 then
					self.HolyPower[i]:SetPoint("LEFT", self.HolyPower, "LEFT", 0, 0)
				else
					self.HolyPower[i]:SetPoint("TOPLEFT", self.HolyPower[i-1], "TOPRIGHT", 1, 0)
				end
				self.HolyPower[i]:SetStatusBarTexture(C.media.texture)
				self.HolyPower[i]:SetStatusBarColor(0.89, 0.88, 0.1)

				self.HolyPower[i].bg = self.HolyPower[i]:CreateTexture(nil, "BORDER")
				self.HolyPower[i].bg:SetAllPoints()
				self.HolyPower[i].bg:SetTexture(C.media.texture)
				self.HolyPower[i].bg:SetVertexColor(0.89, 0.88, 0.1, 0.2)

				self.HolyPower[i].width = self.HolyPower[i]:GetWidth()
			end

			self.HolyPower.Override = T.UpdateHoly
		end

		-- Rune bar
		if T.class == "DEATHKNIGHT" then
			self.Runes = CreateFrame("Frame", self:GetName().."_RuneBar", extclassbaranchor)
			self.Runes:CreateBackdrop("Default")
			self.Runes:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.Runes:SetSize(width, height)

			for i = 1, 6 do
				self.Runes[i] = CreateFrame("StatusBar", self:GetName().."_RuneBar"..i, self.Runes)
				self.Runes[i]:SetSize((width - 4) / 6, height)
				if i == 1 then
					self.Runes[i]:SetPoint("LEFT", self.Runes, "LEFT", 0, 0)
				else
					self.Runes[i]:SetPoint("TOPLEFT", self.Runes[i-1], "TOPRIGHT", 1, 0)
				end
				self.Runes[i]:SetStatusBarTexture(C.media.texture)

				self.Runes[i].bg = self.Runes[i]:CreateTexture(nil, "BORDER")
				self.Runes[i].bg:SetAllPoints()
				self.Runes[i].bg:SetTexture(C.media.texture)
				self.Runes[i].bg.multiplier = 0.2
			end
		end

		if T.class == "MONK" then
			-- Chi bar
			self.HarmonyBar = CreateFrame("Frame", self:GetName().."_HarmonyBar", extclassbaranchor)
			self.HarmonyBar:CreateBackdrop("Default")
			self.HarmonyBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.HarmonyBar:SetSize(width, height)

			for i = 1, 6 do
				self.HarmonyBar[i] = CreateFrame("StatusBar", self:GetName().."_HarmonyBar"..i, self.HarmonyBar)
				self.HarmonyBar[i]:SetSize((width - 4) / 6, height)
				if i == 1 then
					self.HarmonyBar[i]:SetPoint("LEFT", self.HarmonyBar, "LEFT", 0, 0)
				else
					self.HarmonyBar[i]:SetPoint("TOPLEFT", self.HarmonyBar[i-1], "TOPRIGHT", 1, 0)
				end
				self.HarmonyBar[i]:SetStatusBarTexture(C.media.texture)
				self.HarmonyBar[i]:SetStatusBarColor(0.33, 0.63, 0.33)

				self.HarmonyBar[i].bg = self.HarmonyBar[i]:CreateTexture(nil, "BORDER")
				self.HarmonyBar[i].bg:SetAllPoints()
				self.HarmonyBar[i].bg:SetTexture(C.media.texture)
				self.HarmonyBar[i].bg:SetVertexColor(0.33, 0.63, 0.33, 0.2)
			end

			-- Statue bar
			self.TotemBar = CreateFrame("Frame", self:GetName().."_TotemBar", extclassbaranchor)
			self.TotemBar:CreateBackdrop("Default")
			self.TotemBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.TotemBar:SetSize(width, height)
			self.TotemBar.Destroy = true

			for i = 1, 1 do
				self.TotemBar[i] = CreateFrame("StatusBar", self:GetName().."_TotemBar"..i, self.TotemBar)
				self.TotemBar[i]:SetSize((width - 4), height)
				self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 0, 0)
				self.TotemBar[i]:SetStatusBarTexture(C.media.texture)
				self.TotemBar[i]:SetMinMaxValues(0, 1)

				self.TotemBar[i].bg = self.TotemBar[i]:CreateTexture(nil, "BORDER")
				self.TotemBar[i].bg:SetAllPoints()
				self.TotemBar[i].bg:SetTexture(C.media.texture)
				self.TotemBar[i].bg.multiplier = 0.2
			end
		end

		-- Shadow Orbs bar
		if T.class == "PRIEST" then
			self.ShadowOrbsBar = CreateFrame("Frame", self:GetName().."_ShadowOrbsBar", extclassbaranchor)
			self.ShadowOrbsBar:CreateBackdrop("Default")
			self.ShadowOrbsBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.ShadowOrbsBar:SetSize(width, height)

			for i = 1, 5 do
				self.ShadowOrbsBar[i] = CreateFrame("StatusBar", self:GetName().."_ShadowOrbsBar"..i, self.ShadowOrbsBar)
				self.ShadowOrbsBar[i]:SetSize((width - 4) / 5, height)
				if i == 1 then
					self.ShadowOrbsBar[i]:SetPoint("LEFT", self.ShadowOrbsBar, "LEFT", 0, 0)
				else
					self.ShadowOrbsBar[i]:SetPoint("TOPLEFT", self.ShadowOrbsBar[i-1], "TOPRIGHT", 1, 0)
				end
				self.ShadowOrbsBar[i]:SetStatusBarTexture(C.media.texture)
				self.ShadowOrbsBar[i]:SetStatusBarColor(0.70, 0.32, 0.75)

				self.ShadowOrbsBar[i].bg = self.ShadowOrbsBar[i]:CreateTexture(nil, "BORDER")
				self.ShadowOrbsBar[i].bg:SetAllPoints()
				self.ShadowOrbsBar[i].bg:SetTexture(C.media.texture)
				self.ShadowOrbsBar[i].bg:SetVertexColor(0.70, 0.32, 0.75, 0.2)

				self.ShadowOrbsBar[i].width = self.ShadowOrbsBar[i]:GetWidth()
			end

			self.ShadowOrbsBar.Override = T.UpdateShadowOrb
		end

		-- Shard/Burning bar
		if T.class == "WARLOCK" then
			self.WarlockSpecBars = CreateFrame("Frame", self:GetName().."_WarlockSpecBar", extclassbaranchor)
			self.WarlockSpecBars:CreateBackdrop("Default")
			self.WarlockSpecBars:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.WarlockSpecBars:SetSize(width, height)

			for i = 1, 4 do
				self.WarlockSpecBars[i] = CreateFrame("StatusBar", self:GetName().."_WarlockSpecBar"..i, self.WarlockSpecBars)
				self.WarlockSpecBars[i]:SetSize((width - 4) / 4, height)
				if i == 1 then
					self.WarlockSpecBars[i]:SetPoint("LEFT", self.WarlockSpecBars, "LEFT", 0, 0)
				else
					self.WarlockSpecBars[i]:SetPoint("TOPLEFT", self.WarlockSpecBars[i-1], "TOPRIGHT", 1, 0)
				end
				self.WarlockSpecBars[i]:SetStatusBarTexture(C.media.texture)
				self.WarlockSpecBars[i]:SetStatusBarColor(0.9, 0.37, 0.37)

				self.WarlockSpecBars[i].bg = self.WarlockSpecBars[i]:CreateTexture(nil, "BORDER")
				self.WarlockSpecBars[i].bg:SetAllPoints()
				self.WarlockSpecBars[i].bg:SetTexture(C.media.texture)
				self.WarlockSpecBars[i].bg:SetVertexColor(0.9, 0.37, 0.37, 0.2)
			end

			self.WarlockSpecBars.text = T.SetFontString(self.WarlockSpecBars[1], C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
			self.WarlockSpecBars.text:SetPoint("CENTER", self.WarlockSpecBars, "CENTER", 0, 0)
			self:Tag(self.WarlockSpecBars.text, "[DemonicFury]")
		end
		
		-- Rogue/Druid Combo bar
		if T.class == "ROGUE" or T.class == "DRUID" then
			self.CPoints = CreateFrame("Frame", self:GetName().."_ComboBar", extclassbaranchor)
			self.CPoints:CreateBackdrop("Default")
			self.CPoints:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.CPoints:SetSize(width, height, height)

			for i = 1, 5 do
				self.CPoints[i] = CreateFrame("StatusBar", self:GetName().."_ComboBar"..i, self.CPoints)
				self.CPoints[i]:SetSize((width - 4) / 5, height)
				if i == 1 then
					self.CPoints[i]:SetPoint("LEFT", self.CPoints, "LEFT", 0, 0)
				else
					self.CPoints[i]:SetPoint("LEFT", self.CPoints[i-1], "RIGHT", 1, 0)
				end
				self.CPoints[i]:SetStatusBarTexture(C.media.texture)
			end

			self.CPoints[1]:SetStatusBarColor(0.9, 0.1, 0.1)
			self.CPoints[2]:SetStatusBarColor(0.9, 0.1, 0.1)
			self.CPoints[3]:SetStatusBarColor(0.9, 0.9, 0.1)
			self.CPoints[4]:SetStatusBarColor(0.9, 0.9, 0.1)
			self.CPoints[5]:SetStatusBarColor(0.1, 0.9, 0.1)

			self.CPoints.Override = T.UpdateComboPoint

			if T.class == "ROGUE" then
				self.Anticipation = CreateFrame("Frame", self:GetName().."_Anticipation", self.CPoints)
				self.Anticipation:SetPoint("BOTTOM", self.CPoints, "BOTTOM", 0, 0)
				self.Anticipation:SetSize(width, 3)
				
				for i = 1, 5 do
					self.Anticipation[i] = CreateFrame("StatusBar", self:GetName().."_Anticipation"..i, self.Anticipation)
					self.Anticipation[i]:SetSize((width - 4) / 5, 3)
					if i == 1 then
						self.Anticipation[i]:SetPoint("LEFT", self.Anticipation, "LEFT", 0, 0)
					else
						self.Anticipation[i]:SetPoint("LEFT", self.Anticipation[i-1], "RIGHT", 1, 0)
					end
					self.Anticipation[i]:SetStatusBarTexture(C.media.texture)
					self.Anticipation[i]:SetStatusBarColor(0, 0, 0, 1)
				end
			end
		end
		
		-- Totem bar
		if T.class == "SHAMAN" then
			self.TotemBar = CreateFrame("Frame", self:GetName().."_TotemBar", extclassbaranchor)
			self.TotemBar:CreateBackdrop("Default")
			self.TotemBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.TotemBar:SetSize(width, height)
			self.TotemBar.Destroy = true

			for i = 1, 4 do
				self.TotemBar[i] = CreateFrame("StatusBar", self:GetName().."_TotemBar"..i, self.TotemBar)
				self.TotemBar[i]:SetSize((width - 4) / 4, height)

				local fixpos
				if i == 2 then
					self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 0, 0)
				elseif i == 1 then
					self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 55, height)
				else
					fixpos = i
					if i == 3 then fixpos = i-1 end
					self.TotemBar[i]:SetPoint("LEFT", self.TotemBar[fixpos-1], "RIGHT", 1, 0)
				end
				self.TotemBar[i]:SetStatusBarTexture(C.media.texture)
				self.TotemBar[i]:SetMinMaxValues(0, 1)

				self.TotemBar[i].bg = self.TotemBar[i]:CreateTexture(nil, "BORDER")
				self.TotemBar[i].bg:SetAllPoints()
				self.TotemBar[i].bg:SetTexture(C.media.texture)
				self.TotemBar[i].bg.multiplier = 0.2
			end
		end

		if T.class == "DRUID" then
			-- Druid mana
			CreateFrame("Frame"):SetScript("OnUpdate", function() T.UpdateClassMana(self) end)
			self.ClassMana = T.SetFontString(self.Power, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
			self.ClassMana:SetTextColor(1, 0.49, 0.04)

			-- Eclipse bar
			self.EclipseBar = CreateFrame("Frame", self:GetName().."_EclipseBar", extclassbaranchor)
			self.EclipseBar:CreateBackdrop("Default")
			self.EclipseBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.EclipseBar:SetSize(width, height)

			self.EclipseBar.LunarBar = CreateFrame("StatusBar", self:GetName().."_EclipseBar_LunarBar", self.EclipseBar)
			self.EclipseBar.LunarBar:SetPoint("LEFT", self.EclipseBar, "LEFT", 0, 0)
			self.EclipseBar.LunarBar:SetSize(self.EclipseBar:GetWidth(), self.EclipseBar:GetHeight())
			self.EclipseBar.LunarBar:SetStatusBarTexture(C.media.texture)
			self.EclipseBar.LunarBar:SetStatusBarColor(0.80, 0.80, 0.20)

			self.EclipseBar.SolarBar = CreateFrame("StatusBar", self:GetName().."_EclipseBar_SolarBar", self.EclipseBar)
			self.EclipseBar.SolarBar:SetPoint("LEFT", self.EclipseBar.LunarBar:GetStatusBarTexture(), "RIGHT", 0, 0)
			self.EclipseBar.SolarBar:SetSize(self.EclipseBar:GetWidth(), self.EclipseBar:GetHeight())
			self.EclipseBar.SolarBar:SetStatusBarTexture(C.media.texture)
			self.EclipseBar.SolarBar:SetStatusBarColor(0.30, 0.30, 0.80)

			self.EclipseBar.Text = T.SetFontString(self.EclipseBar.SolarBar, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
			self.EclipseBar.Text:SetPoint("CENTER", self.EclipseBar, "CENTER", -6, 0)

			self.EclipseBar.Pers = T.SetFontString(self.EclipseBar.SolarBar, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
			self.EclipseBar.Pers:SetPoint("LEFT", self.EclipseBar.Text, "RIGHT", 2, 0)
			self:Tag(self.EclipseBar.Pers, "[pereclipse]%")

			self.EclipseBar:SetScript("OnShow", function() T.UpdateEclipse(self, false) end)
			self.EclipseBar:SetScript("OnUpdate", function() T.UpdateEclipse(self, true) end)
			self.EclipseBar:SetScript("OnHide", function() T.UpdateEclipse(self, false) end)
			self.EclipseBar.PostUpdatePower = T.EclipseDirection

			-- Mushroom bar
			self.TotemBar = CreateFrame("Frame", self:GetName().."_TotemBar", extclassbaranchor)
			self.TotemBar:CreateBackdrop("Default")
			self.TotemBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.TotemBar:SetSize(width, height)
			self.TotemBar.Destroy = true

			for i = 1, 3 do
				self.TotemBar[i] = CreateFrame("StatusBar", self:GetName().."_TotemBar"..i, self.TotemBar)
				self.TotemBar[i]:SetSize((width - 4) / 3, height)
				if i == 1 then
					self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 0, 0)
				else
					self.TotemBar[i]:SetPoint("TOPLEFT", self.TotemBar[i-1], "TOPRIGHT", 0, 0)
				end
				self.TotemBar[i]:SetStatusBarTexture(C.media.texture)
				self.TotemBar[i]:SetMinMaxValues(0, 1)

				self.TotemBar[i].bg = self.TotemBar[i]:CreateTexture(nil, "BORDER")
				self.TotemBar[i].bg:SetAllPoints()
				self.TotemBar[i].bg:SetTexture(C.media.texture)
				self.TotemBar[i].bg.multiplier = 0.2
			end
		end

		-- Mocking Banner bar
		if T.class == "WARRIOR" then
			self.TotemBar = CreateFrame("Frame", self:GetName().."_TotemBar", extclassbaranchor)
			self.TotemBar:CreateBackdrop("Default")
			self.TotemBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.TotemBar:SetSize(width, height)
			self.TotemBar.Destroy = true

			for i = 1, 1 do
				self.TotemBar[i] = CreateFrame("StatusBar", self:GetName().."_TotemBar"..i, self.TotemBar)
				self.TotemBar[i]:SetSize((width - 4), height)
				self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 0, 0)
				self.TotemBar[i]:SetStatusBarTexture(C.media.texture)
				self.TotemBar[i]:SetMinMaxValues(0, 1)

				self.TotemBar[i].bg = self.TotemBar[i]:CreateTexture(nil, "BORDER")
				self.TotemBar[i].bg:SetAllPoints()
				self.TotemBar[i].bg:SetTexture(C.media.texture)
				self.TotemBar[i].bg.multiplier = 0.2
			end
		end

		-- Rune of Power bar
		if T.class == "MAGE" then
			self.TotemBar = CreateFrame("Frame", self:GetName().."_TotemBar", extclassbaranchor)
			self.TotemBar:CreateBackdrop("Default")
			self.TotemBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, height+space)
			self.TotemBar:SetSize(width, height)
			self.TotemBar.Destroy = true

			for i = 1, 2 do
				self.TotemBar[i] = CreateFrame("StatusBar", self:GetName().."_TotemBar"..i, self.TotemBar)
				self.TotemBar[i]:SetSize((width - 4) / 2, height)
				if i == 1 then
					self.TotemBar[i]:SetPoint("LEFT", self.TotemBar, "LEFT", 0, 0)
				else
					self.TotemBar[i]:SetPoint("TOPLEFT", self.TotemBar[i-1], "TOPRIGHT", 0, 0)
				end
				self.TotemBar[i]:SetStatusBarTexture(C.media.texture)
				self.TotemBar[i]:SetMinMaxValues(0, 1)

				self.TotemBar[i].bg = self.TotemBar[i]:CreateTexture(nil, "BORDER")
				self.TotemBar[i].bg:SetAllPoints()
				self.TotemBar[i].bg:SetTexture(C.media.texture)
				self.TotemBar[i].bg.multiplier = 0.2
			end
		end

		-- Resolve bar
		self.ResolveBar = CreateFrame("Frame", self:GetName().."_ResolveBar", extclassbaranchor)
		self.ResolveBar:CreateBackdrop("Default")
		self.ResolveBar:SetPoint("BOTTOM", extclassbaranchor, "BOTTOM", 0, 2*(height+space))
		self.ResolveBar:SetSize(width, height)

		self.ResolveBar.Bar = CreateFrame("StatusBar", self:GetName().."_ResolveBar.Bar", self.ResolveBar)
		self.ResolveBar.Bar:SetPoint("LEFT", self.ResolveBar, "LEFT", 0, 0)
		self.ResolveBar.Bar:SetSize(width, height)
		self.ResolveBar.Bar:SetStatusBarTexture(C.media.texture)
		self.ResolveBar.Bar:SetStatusBarColor(T.color.r, T.color.g, T.color.b)

		self.ResolveBar.bg = self.ResolveBar.Bar:CreateTexture(nil, "BORDER")
		self.ResolveBar.bg:SetAllPoints()
		self.ResolveBar.bg:SetTexture(C.media.texture)
		self.ResolveBar.bg:SetVertexColor(T.color.r, T.color.g, T.color.b, 0.2)

		self.ResolveBar.Text = T.SetFontString(self.ResolveBar.Bar, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
		self.ResolveBar.Text:SetPoint("CENTER", self.ResolveBar.Bar, "CENTER", 0, 0)

		-- Monk mana
		if T.class == "MONK" then
			CreateFrame("Frame"):SetScript("OnUpdate", function() T.UpdateClassMana(self) end)
			self.ClassMana = T.SetFontString(self.Power, C.font.unit_frames_font, C.font.unit_frames_font_size, C.font.unit_frames_font_style)
			self.ClassMana:SetTextColor(0.0, 1, 0.59)
		end

		-- GCD spark
		if C.unitframe.plugins_gcd == true then
			self.GCD = CreateFrame("Frame", self:GetName().."_GCD", extclassbaranchor)
			self.GCD:SetWidth(width)
			self.GCD:SetHeight(3)
			self.GCD:SetFrameStrata("HIGH")
			self.GCD:SetPoint("LEFT", self.Power, "TOPLEFT", 0, 2)

			self.GCD.Color = {1, 1, 1}
			self.GCD.Height = T.Scale(3)
			self.GCD.Width = T.Scale(4)
		end
	end
end

----------------------------------------------------------------------------------------
--	Default position of ShestakUI unitframes
----------------------------------------------------------------------------------------
oUF:RegisterStyle("Shestak_ExtClassBar", Shared)
oUF:SetActiveStyle("Shestak_ExtClassBar")
local ExtClassBarAnchor = oUF:Spawn("player", "oUF_Player")
ExtClassBarAnchor:SetPoint("CENTER")
ExtClassBarAnchor:SetSize(1, 1)	--修改
ExtClassBarAnchor:Hide()