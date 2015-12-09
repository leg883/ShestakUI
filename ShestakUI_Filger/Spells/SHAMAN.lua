local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["SHAMAN"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--Earth Shield / Erdschild
			{spellID = 974, unitID = "player", caster = "player", filter = "BUFF"},
			--Lightning Shield / Blitzschlagschild
			{spellID = 324, unitID = "player", caster = "player", filter = "BUFF"},
			--Water Shield / Wasserschild
			{spellID = 52127, unitID = "player", caster = "player", filter = "BUFF"},
			--治疗之雨
			{spellID = 73920, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--Maelstorm Weapon / Waffe des Mahlstroms
			{spellID = 53817, unitID = "player", caster = "player", filter = "BUFF"},
			--Shamanistic Rage / Schamanistische Wut
			{spellID = 30823, unitID = "player", caster = "player", filter = "BUFF"},
			--靈行者之賜
			{spellID = 79206, unitID = "player", caster = "player", filter = "BUFF"},
			--釋放生命武器
			{spellID = 73685, unitID = "player", caster = "player", filter = "BUFF"},
			--治療之潮
			{spellID = 53390, unitID = "player", caster = "player", filter = "BUFF"},
			--卓越術
			{spellID = 114052, unitID = "player", caster = "player", filter = "BUFF"},
			--星界轉移
			{spellID = 108271, unitID = "player", caster = "player", filter = "BUFF"},
			--升腾
			{spellID = 114050, unitID = "player", caster = "player", filter = "BUFF"},
			--元素回响
			{spellID = 159105, unitID = "player", caster = "player", filter = "BUFF"},
			--元素回响
			{spellID = 159101, unitID = "player", caster = "player", filter = "BUFF"},
			--先祖指引
			{spellID = 108281, unitID = "player", caster = "player", filter = "BUFF"},
			--元素掌握
			{spellID = 16166, unitID = "player", caster = "player", filter = "BUFF"},
			--元素融合
			{spellID = 157174, unitID = "player", caster = "player", filter = "BUFF"},
			--火焰释放
			{spellID = 165462, unitID = "player", caster = "player", filter = "BUFF"},
			--怒火释放（元素）
			{spellID = 118470, unitID = "player", caster = "player", filter = "BUFF"},
		   --怒火释放（治疗）
			{spellID = 118473, unitID = "player", caster = "player", filter = "BUFF"},
			--怒火释放（增强）
			{spellID = 118472, unitID = "player", caster = "player", filter = "BUFF"},
			--Riptide / Springflut
			{spellID = 61295, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

			--Earth Shield / Erdschild
			{spellID = 974, unitID = "target", caster = "player", filter = "BUFF"},
			--冰凍之力
			{spellID = 63685, unitID = "target", caster = "player", filter = "DEBUFF"},
			--陷地图腾（天赋）
            {spellID = 64695, unitID = "target", caster = "player", filter = "BUFF"},			
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

			--Hex / Verhexen
			{spellID = 51514, unitID = "target", caster = "all", filter = "DEBUFF"},
			--Storm Strike / Sturmschlag
			{spellID = 17364, unitID = "target", caster = "player", filter = "DEBUFF"},
			--Frost Shock / Frostschock
			{spellID = 8056, unitID = "target", caster = "player", filter = "DEBUFF"},
			--Flame Shock / Flammenschock
			{spellID = 8050, unitID = "target", caster = "player", filter = "DEBUFF"},
			--Riptide / Springflut
			{spellID = 61295, unitID = "target", caster = "player", filter = "BUFF"},
			--地震术
			{spellID = 182387, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = 3,
			Alpha = 1,
			IconSize = 25,
			BarWidth = 186,
			Position = {unpack(C["filger_position"].target_bar)},

			-- Earth Shield
			{spellID = 974, unitID = "target", caster = "player", filter = "BUFF"},
			-- Riptide
			{spellID = 61295, unitID = "target", caster = "player", filter = "BUFF"},
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			IconSide = "LEFT",
			Mode = "BAR",
			Interval = 3,
			Alpha = 1,
			IconSize = 25,
			BarWidth = 189,
			Position = {unpack(C["filger_position"].pve_cc)},

			-- Hex
			{spellID = 51514, unitID = "focus", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 30,
			Position = {unpack(C["filger_position"].cooldown)},

			-- Self
			--升腾
			{spellID = 114050, filter = "CD"},
			-- Cleanse Spirit
			{spellID = 51886, filter = "CD"},
			-- Wind Shear
			{spellID = 57994, filter = "CD"},
			-- Hex
			{spellID = 51514, filter = "CD"},
			-- Earth Shock
			{spellID = 8042, filter = "CD"},
			-- Lava Burst
			{spellID = 51505, filter = "CD"},
			-- Riptide
			{spellID = 61295, filter = "CD"},
			-- Stormstrike
			{spellID = 17364, filter = "CD"},
			-- Lava Lash
			{spellID = 60103, filter = "CD"},
			-- Healing Rain
			{spellID = 73920, filter = "CD"},
			-- Elemental Blast
			{spellID = 117014, filter = "CD"},
			-- Unleash Elements
			{spellID = 73680, filter = "CD"},
			-- Thunderstorm
			{spellID = 51490, filter = "CD"},
			-- Earthbind Totem
			{spellID = 2484, filter = "CD"},
			-- Tremor Totem
			{spellID = 8143, filter = "CD"},
			-- Shamanistic Rage
			{spellID = 30823, filter = "CD"},
			-- Stone Bulwark Totem
			{spellID = 108270, filter = "CD"},
			-- Astral Shift
			{spellID = 108271, filter = "CD"},
			-- Ancestral Swiftness
			{spellID = 16188, filter = "CD"},
			-- Feral Spirit
			{spellID = 51533, filter = "CD"},
			-- Spiritwalker's Grace
			{spellID = 79206, filter = "CD"},
			-- Ancestral Guidance
			{spellID = 108281, filter = "CD"},
			-- Ascendance
			{spellID = 114049, filter = "CD"},

			-- Racial
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Rocket Jump (Goblin)
			{spellID = 69070, filter = "CD"},
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},

			-- 物品
			-- 手套
			{slotID = 10, filter = "CD"},
			-- 腰带
			{slotID = 6, filter = "CD"},
			-- 披风
			{slotID = 15, filter = "CD"},
			-- 饰品
			{slotID = 13, filter = "CD"},
			{slotID = 14, filter = "CD"},
		},
	},
}
