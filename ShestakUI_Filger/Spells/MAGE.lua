local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["MAGE"] = {
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

			--冰霜之指
			{spellID = 44544, unitID = "player", caster = "player", filter = "BUFF"},
			--焦炎之痕
			{spellID = 48108, unitID = "player", caster = "player", filter = "BUFF"},
			--飛彈彈幕
			{spellID = 79683, unitID = "player", caster = "player", filter = "BUFF"},
			--秘法強化
			{spellID = 12042, unitID = "player", caster = "player", filter = "BUFF"},
			--秘法衝擊
			{spellID = 36032, unitID = "player", caster = "player", filter = "DEBUFF"},
			--寒冰護體
			{spellID = 11426, unitID = "player", caster = "player", filter = "BUFF"},
			--腦部凍結
			{spellID = 57761, unitID = "player", caster = "player", filter = "BUFF"},
			--升溫
			{spellID = 48107, unitID = "player", caster = "player", filter = "BUFF"},
			--咒法結界
			{spellID = 1463, unitID = "player", caster = "player", filter = "BUFF"},
			--力之符文
			{spellID = 116014, unitID = "player", caster = "player", filter = "BUFF"},
			--咒法轉移
			{spellID = 116267, unitID = "player", caster = "player", filter = "BUFF"},
			--冰寒脈動
			{spellID = 12472, unitID = "player", caster = "player", filter = "BUFF"},
			--氣定神閒
			{spellID = 12043, unitID = "player", caster = "player", filter = "BUFF"},
			--時光倒轉
			{spellID = 110909, unitID = "player", caster = "player", filter = "BUFF"},
			--時光護盾
			{spellID = 115610, unitID = "player", caster = "player", filter = "BUFF"},
			--燒灼
			{spellID = 87023, unitID = "player", caster = "player", filter = "DEBUFF"},
			--強效隱形
			{spellID = 113862, unitID = "player", caster = "player", filter = "BUFF"},
			--幻灵晶体
			{spellID = 152087, unitID = "player", caster = "player", filter = "BUFF"},
			--冰霜炸彈
			{spellID = 112948, filter = "CD"},
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

			--變形術
			{spellID = 118, unitID = "target", caster = "all", filter = "DEBUFF"},
			--龍之吐息
			{spellID = 31661, unitID = "target", caster = "all", filter = "DEBUFF"},
			--減速術
			{spellID = 31589, unitID = "target", caster = "player", filter = "DEBUFF"},
			--燃火
			{spellID = 83853, unitID = "target", caster = "player", filter = "DEBUFF"},
			--點燃
			{spellID = 12654, unitID = "target", caster = "player", filter = "DEBUFF"},
			--活體爆彈
			{spellID = 44457, unitID = "target", caster = "player", filter = "DEBUFF"},
			--炎爆術
			{spellID = 11366, unitID = "target", caster = "player", filter = "DEBUFF"},
			--極度冰凍
			{spellID = 44572, unitID = "target", caster = "all", filter = "DEBUFF"},
			--冰霜爆彈
			{spellID = 112948, unitID = "target", caster = "player", filter = "DEBUFF"},
			--虛空暴雨
			{spellID = 114923, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Polymorph
			{spellID = 118, unitID = "focus", caster = "all", filter = "DEBUFF"},
			--活體爆彈
            {spellID = 44457, unitID = "focus", caster = "player", filter = "DEBUFF"},
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
			-- Remove Curse
			{spellID = 475, filter = "CD"},
			-- Frostjaw
			{spellID = 102051, filter = "CD"},
			-- Counterspell
			{spellID = 2139, filter = "CD"},
			-- Blink
			{spellID = 1953, filter = "CD"},
			-- Blazing Speed
			{spellID = 108843, filter = "CD"},
			-- Deep Freeze
			{spellID = 44572, filter = "CD"},
			-- Frost Nova
			{spellID = 122, filter = "CD"},
			-- Ice Ward
			{spellID = 111264, filter = "CD"},
			-- Ring of Frost
			{spellID = 113724, filter = "CD"},
			-- Ice Barrier
			{spellID = 11426, filter = "CD"},
			-- Temporal Shield
			{spellID = 115610, filter = "CD"},
			-- Incanter's Ward
			{spellID = 1463, filter = "CD"},
			-- Fire Blast
			{spellID = 2136, filter = "CD"},
			-- Frost Bomb
			{spellID = 112948, filter = "CD"},
			-- Flamestrike
			{spellID = 2120, filter = "CD"},
			-- Cone of Cold
			{spellID = 120, filter = "CD"},
			-- Freeze (Pet)
			{spellID = 33395, filter = "CD"},
			-- Ice Floes
			{spellID = 108839, filter = "CD"},
			-- Combustion
			{spellID = 11129, filter = "CD"},
			-- Frozen Orb
			{spellID = 84714, filter = "CD"},
			-- Arcane Power
			{spellID = 12042, filter = "CD"},
			-- Presence of Mind
			{spellID = 12043, filter = "CD"},
			-- Evocation
			{spellID = 12051, filter = "CD"},
			-- Icy Veins
			{spellID = 12472, filter = "CD"},
			-- Cold Snap
			{spellID = 11958, filter = "CD"},
			-- Mirror Image
			{spellID = 55342, filter = "CD"},
			-- Alter Time
			{spellID = 108978, filter = "CD"},
			-- Ice Block
			{spellID = 45438, filter = "CD"},
			-- Invisibility
			{spellID = 66, filter = "CD"},
			-- 幻灵晶体
			{spellID = 152087, filter = "CD"},
			-- 彗星风暴
			{spellID = 153595, filter = "CD"},

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
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- Blood Fury (Orc)
			{spellID = 20572, filter = "CD"},
			-- Will of the Forsaken (Forsaken)
			{spellID = 7744, filter = "CD"},
			-- Cannibalize (Forsaken)
			{spellID = 20577, filter = "CD"},
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
