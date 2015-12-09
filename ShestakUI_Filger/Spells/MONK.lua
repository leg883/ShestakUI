local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["MONK"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--飄渺絕釀
			{spellID = 128939, unitID = "player", caster = "player", filter = "BUFF"},
			--虎眼絕釀
			{spellID = 125195, unitID = "player", caster = "player", filter = "BUFF"},
			--回生迷霧
			{spellID = 119611, unitID = "player", caster = "player", filter = "BUFF"},
			--迷霧繚繞
			{spellID = 132120, unitID = "player", caster = "player", filter = "BUFF"},
			--舒和之霧
			{spellID = 115175, unitID = "player", caster = "player", filter = "BUFF"},
			--酒仙小緩勁
			{spellID = 124275, unitID = "player", caster = "all", filter = "DEBUFF"},
			--酒仙中緩勁
			{spellID = 124274, unitID = "player", caster = "all", filter = "DEBUFF"},
			--酒仙大緩勁
			{spellID = 124273, unitID = "player", caster = "all", filter = "DEBUFF"},
			--法力茶
			{spellID = 115867, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--虎掌
			{spellID = 125359, unitID = "player", caster = "player", filter = "BUFF"},
			--禪心玉
			{spellID = 124081, unitID = "player", caster = "player", filter = "BUFF"},
			--石形絕釀
			{spellID = 120954, unitID = "player", caster = "player", filter = "BUFF"},
			--醉拳
			{spellID = 115307, unitID = "player", caster = "player", filter = "BUFF"},
			--護身氣勁
			{spellID = 115295, unitID = "player", caster = "player", filter = "BUFF"},
			--飄渺絕釀
			{spellID = 115308, unitID = "player", caster = "player", filter = "BUFF"},
			--虎眼絕釀
			{spellID = 116740, unitID = "player", caster = "player", filter = "BUFF"},
			--乾坤挪移
			{spellID = 125174, unitID = "player", caster = "player", filter = "BUFF"},
			--蛟龍之誠
			{spellID = 127722, unitID = "player", caster = "player", filter = "BUFF"},
			--精活迷霧
			{spellID = 118674, unitID = "player", caster = "player", filter = "BUFF"},
			--連段破:滅寂腿
			{spellID = 116768, unitID = "player", caster = "player", filter = "BUFF"},
			--連段破:虎掌
			{spellID = 118864, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

			--回生迷霧
			{spellID = 119611, unitID = "target", caster = "player", filter = "BUFF"},
			--迷霧繚繞
			{spellID = 132120, unitID = "target", caster = "player", filter = "BUFF"},
			--舒和之霧
			{spellID = 115175, unitID = "target", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

			--掃葉腿
			{spellID = 119381, unitID = "target", caster = "player", filter = "DEBUFF"},
			--微醺醉氣
			{spellID = 116330, unitID = "target", caster = "player", filter = "DEBUFF"},
			--旭日东升踢
			{spellID = 130320, unitID = "target", caster = "player", filter = "DEBUFF"},
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
			-- Detox
			{spellID = 115450, filter = "CD"},
			-- Spear Hand Strike
			{spellID = 116705, filter = "CD"},
			-- Paralysis
			{spellID = 115078, filter = "CD"},
			-- Expel Harm
			{spellID = 115072, filter = "CD"},
			-- Rising Sun Kick
			{spellID = 107428, filter = "CD"},
			-- Provoke
			{spellID = 115546, filter = "CD"},
			-- Zen Sphere
			{spellID = 124081, filter = "CD"},
			-- Chi Wave
			{spellID = 115098, filter = "CD"},
			-- Fists of Fury
			{spellID = 113656, filter = "CD"},
			-- Chi Burst
			{spellID = 123986, filter = "CD"},
			-- Guard
			{spellID = 115295, filter = "CD"},
			-- Charging Ox Wave
			{spellID = 119392, filter = "CD"},
			-- Ring of Peace
			{spellID = 116844, filter = "CD"},
			-- Thunder Focus Tea
			{spellID = 116680, filter = "CD"},
			-- Dampen Harm
			{spellID = 122278, filter = "CD"},
			-- Flying Serpent Kick
			{spellID = 101545, filter = "CD"},
			-- Energizing Brew
			{spellID = 115288, filter = "CD"},
			-- Touch of Karma
			{spellID = 122470, filter = "CD"},
			-- Touch of Death
			{spellID = 115080, filter = "CD"},
			-- Nimble Brew
			{spellID = 137562, filter = "CD"},
			-- Life Cocoon
			{spellID = 116849, filter = "CD"},
			-- Invoke Xuen, the White Tiger
			{spellID = 123904, filter = "CD"},

			-- Racial
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD"},
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},
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
