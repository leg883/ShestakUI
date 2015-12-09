local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["DEATHKNIGHT"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},


		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

				--血魄護盾
                {spellID = 77535, unitID = "player", caster = "player", filter = "BUFF"},
                --血魄轉化
                {spellID = 45529, unitID = "player", caster = "player", filter = "BUFF"},
                --血族之裔
                {spellID = 55233, unitID = "player", caster = "player", filter = "BUFF"},
                --穢邪力量
                {spellID = 53365, unitID = "player", caster = "player", filter = "BUFF"},
                --穢邪之力
                {spellID = 67117, unitID = "player", caster = "player", filter = "BUFF"},
                --符文武器幻舞
                {spellID = 81256, unitID = "player", caster = "player", filter = "BUFF"},
                --冰錮堅韌
                {spellID = 48792, unitID = "player", caster = "player", filter = "BUFF"},
                --反魔法護罩
                {spellID = 48707, unitID = "player", caster = "player", filter = "BUFF"},
                --殺戮酷刑
                {spellID = 51124, unitID = "player", caster = "player", filter = "BUFF"},
                --冰封之霧
                {spellID = 59052, unitID = "player", caster = "player", filter = "BUFF"},
                --骸骨之盾
                {spellID = 49222, unitID = "player", caster = "player", filter = "BUFF"},
                --冰霜之柱
                {spellID = 51271, unitID = "player", caster = "player", filter = "BUFF"},
                --血魄充能
                {spellID = 114851, unitID = "player", caster = "player", filter = "BUFF"},
                --黑暗救贖
                {spellID = 101568, unitID = "player", caster = "player", filter = "BUFF"},
                --寶寶能量
                {spellID = 91342, unitID = "pet", caster = "player", filter = "BUFF"},
                --黑暗變身
                {spellID = 63560, unitID = "pet", caster = "player", filter = "BUFF"},
                --鮮血氣息
                {spellID = 50421, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},


		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

				--絞殺
                {spellID = 47476, unitID = "target", caster = "player", filter = "DEBUFF"},
                --血魄瘟疫
                {spellID = 55078, unitID = "target", caster = "player", filter = "DEBUFF"},
                --冰霜熱疫
                {spellID = 55095, unitID = "target", caster = "player", filter = "DEBUFF"},
                --召喚石像鬼
                {spellID = 49206, unitID = "target", caster = "player", filter = "DEBUFF"},
                --死亡凋零
                {spellID = 43265, unitID = "target", caster = "player", filter = "DEBUFF"},
                --靈魂收割者
                {spellID = 130736, unitID = "target", caster = "player", filter = "DEBUFF"},
                {spellID = 114866, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Blood Plague
			{spellID = 55078, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Frost Fever
			{spellID = 55095, unitID = "target", caster = "player", filter = "DEBUFF"},
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
			-- Mind Freeze
			{spellID = 47528, filter = "CD"},
			-- Strangulate
			{spellID = 47476, filter = "CD"},
			-- Gnaw (Ghoul)
			{spellID = 47481, filter = "CD"},
			-- Remorseless Winter
			{spellID = 108200, filter = "CD"},
			-- Dark Simulacrum
			{spellID = 77606, filter = "CD"},
			-- Soul Reaper
			{spellID = 130736, filter = "CD"},
			-- Death Grip
			{spellID = 49576, filter = "CD"},
			-- Plague Leech
			{spellID = 123693, filter = "CD"},
			-- Death and Decay
			{spellID = 43265, filter = "CD"},
			-- Death's Advance
			{spellID = 96268, filter = "CD"},
			-- Rune Tap
			{spellID = 48982, filter = "CD"},
			-- Anti-Magic Shell
			{spellID = 48707, filter = "CD"},
			-- Vampiric Blood
			{spellID = 55233, filter = "CD"},
			-- Pillar of Frost
			{spellID = 51271, filter = "CD"},
			-- Outbreak
			{spellID = 77575, filter = "CD"},
			-- Gorefiend's Grasp
			{spellID = 108199, filter = "CD"},
			-- Raise Dead
			{spellID = 46584, filter = "CD"},
			-- Dancing Rune Weapon
			{spellID = 49028, filter = "CD"},
			-- Unholy Blight
			{spellID = 115989, filter = "CD"},
			-- Lichborne
			{spellID = 49039, filter = "CD"},
			-- Desecrated Ground
			{spellID = 108201, filter = "CD"},
			-- Death Pact
			{spellID = 48743, filter = "CD"},
			-- Anti-Magic Zone
			{spellID = 51052, filter = "CD"},
			-- Icebound Fortitude
			{spellID = 48792, filter = "CD"},
			-- Summon Gargoyle
			{spellID = 49206, filter = "CD"},
			
			-- Racial种族buff cd
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
