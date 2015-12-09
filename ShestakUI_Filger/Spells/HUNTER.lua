local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["HUNTER"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

				--狙击训练
                {spellID = 168811, unitID = "player", caster = "player", filter = "BUFF"},
				--狙击训练；最近移动
                {spellID = 168809, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

				--誤導
                {spellID = 34477, unitID = "player", caster = "player", filter = "BUFF"},
                {spellID = 35079, unitID = "player", caster = "player", filter = "BUFF"},
                --快速射擊
                {spellID = 6150, unitID = "player", caster = "player", filter = "BUFF"},
                --戰術大師
                {spellID = 34837, unitID = "player", caster = "player", filter = "BUFF"},
                --急速射擊
                {spellID = 3045, unitID = "player", caster = "player", filter = "BUFF"},
                --治療寵物
                {spellID = 136, unitID = "pet", caster = "player", filter = "BUFF"},
                --連環火網
                {spellID = 82921, unitID = "player", caster = "player", filter = "BUFF"},
                --狂亂效果
                {spellID = 19615, unitID = "pet", caster = "pet", filter = "BUFF"},
                --獵殺快感
                {spellID = 34720, unitID = "player", caster = "player", filter = "BUFF"},
                --4T13
                {spellID = 105919, unitID = "player", caster = "player", filter = "BUFF"},
                --稳固集中
                {spellID = 177668, unitID = "player", caster = "player", filter = "BUFF"},
                --擊殺命令
                {spellID = 34026, filter = "CD"},
                --爆裂射擊
                {spellID = 53301, filter = "CD"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

				--獵人印記
                {spellID = 1130, unitID = "target", caster = "all", filter = "DEBUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

				--翼龍釘刺
                {spellID = 19386, unitID = "target", caster = "all", filter = "DEBUFF"},
                --毒蛇釘刺
                {spellID = 118253, unitID = "target", caster = "player", filter = "DEBUFF"},
                --黑蝕箭
                {spellID = 3674, unitID = "target", caster = "player", filter = "DEBUFF"},
                --爆裂射擊
                {spellID = 53301, unitID = "target", caster = "player", filter = "DEBUFF"},
                --黑鸦
                {spellID = 131894, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Wyvern Sting
			{spellID = 19386, unitID = "focus", caster = "player", filter = "DEBUFF"},
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
			-- Concussive Shot
			{spellID = 5116, filter = "CD"},
			-- Counter Shot
			{spellID = 147362, filter = "CD"},
			-- Kill Command
			{spellID = 34026, filter = "CD"},
			-- Explosive Shot
			{spellID = 53301, filter = "CD"},
			-- Chimera Shot
			{spellID = 53209, filter = "CD"},
			-- Kill Shot
			{spellID = 53351, filter = "CD"},
			-- Glaive Toss
			{spellID = 117050, filter = "CD"},
			-- Barrage
			{spellID = 120360, filter = "CD"},
			-- Disengage
			{spellID = 781, filter = "CD"},
			-- Dire Beast
			{spellID = 120679, filter = "CD"},
			-- Fervor
			{spellID = 82726, filter = "CD"},
			-- Misdirection
			{spellID = 34477, filter = "CD"},
			-- Feign Death
			{spellID = 5384, filter = "CD"},
			-- Explosive Trap
			{spellID = 13813, filter = "CD"},
			-- Ice Trap
			{spellID = 13809, filter = "CD"},
			-- Binding Shot
			{spellID = 117526, filter = "CD"},
			-- Master's Call
			{spellID = 53271, filter = "CD"},
			-- Powershot
			{spellID = 109259, filter = "CD"},
			-- Wyvern Sting
			{spellID = 19386, filter = "CD"},
			-- Intimidation
			{spellID = 19577, filter = "CD"},
			-- Bestial Wrath
			{spellID = 19574, filter = "CD"},
			-- A Murder of Crows
			{spellID = 131894, filter = "CD"},
			-- Lynx Rush
			{spellID = 120697, filter = "CD"},
			-- Exhilaration
			{spellID = 109304, filter = "CD"},
			-- Rapid Fire
			{spellID = 3045, filter = "CD"},
			-- Deterrence
			{spellID = 19263, filter = "CD"},
			-- Spirit Mend (Pet)
			{spellID = 90361, filter = "CD"},

			-- Racial
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
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
