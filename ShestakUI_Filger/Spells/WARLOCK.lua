local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["WARLOCK"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--黑暗再生
			{spellID = 108359, unitID = "player", caster = "player", filter = "BUFF"},
			--灵魂榨取
			{spellID = 108366, unitID = "player", caster = "player", filter = "BUFF"},
			--牺牲契约
			{spellID = 108416, unitID = "player", caster = "player", filter = "BUFF"},
			--黑暗交易
			{spellID = 110913, unitID = "player", caster = "player", filter = "BUFF"},
			--猩红恐惧
			{spellID = 111397, unitID = "player", caster = "player", filter = "BUFF"},
			--爆燃冲刺
			{spellID = 111400, unitID = "player", caster = "player", filter = "BUFF"},
			--魔性征召
			{spellID = 114925, unitID = "player", caster = "player", filter = "BUFF"},
			--魔典：恶魔牺牲
			{spellID = 108503, unitID = "player", caster = "player", filter = "BUFF"},
			--恶魔法阵：召唤
			{spellID = 48018, unitID = "player", caster = "player", filter = "BUFF"},
			--灵魂石保存
			{spellID = 20707, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--灵魂燃烧
			{spellID = 74434, unitID = "player", caster = "player", filter = "BUFF"},
			--灵魂交换
			{spellID = 86211, unitID = "player", caster = "player", filter = "BUFF"},
			--黑暗灵魂：哀难
			{spellID = 113860, unitID = "player", caster = "player", filter = "BUFF"},
			--熔火之心
			{spellID = 122355, unitID = "player", caster = "player", filter = "BUFF"},
			--恶魔协同
			{spellID = 171982, unitID = "player", caster = "all", filter = "BUFF"},
			--炽燃之怒(2T16)
			{spellID = 145085, unitID = "player", caster = "player", filter = "BUFF"},
			--黑暗灵魂：学识
			{spellID = 113861, unitID = "player", caster = "player", filter = "BUFF"},
			--爆燃
			{spellID = 117828, unitID = "player", caster = "player", filter = "BUFF"},
			--火焰之雨
			{spellID = 104232, unitID = "player", caster = "player", filter = "BUFF"},
			--硫磺烈火
			{spellID = 108683, unitID = "player", caster = "player", filter = "BUFF"},
			--浩劫
			{spellID = 80240, unitID = "player", caster = "player", filter = "BUFF"},
			--黑暗灵魂：易爆
			{spellID = 113858, unitID = "player", caster = "player", filter = "BUFF"},
			--基尔加丹的狡诈
			{spellID = 137587, unitID = "player", caster = "player", filter = "BUFF"},
			--玛诺洛斯的狂怒
			{spellID = 108508, unitID = "player", caster = "player", filter = "BUFF"},
			--不灭决心
			{spellID = 104773, unitID = "player", caster = "player", filter = "BUFF"},
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

			--恐懼術
			{spellID = 118699, unitID = "target", caster = "player", filter = "DEBUFF"},
			--放逐術
			{spellID = 710, unitID = "target", caster = "player", filter = "DEBUFF"},
			--腐蝕術
			{spellID = 146739, unitID = "target", caster = "player", filter = "DEBUFF"},
			--痛苦災厄
			{spellID = 980, unitID = "target", caster = "player", filter = "DEBUFF"},
			--痛苦動盪
			{spellID = 30108, unitID = "target", caster = "player", filter = "DEBUFF"},
			--蝕魂術
			{spellID = 48181, unitID = "target", caster = "player", filter = "DEBUFF"},
			--腐蝕種子
			{spellID = 27243, unitID = "target", caster = "player", filter = "DEBUFF"},
			--古尔丹之手
			{spellID = 47960, unitID = "target", caster = "player", filter = "DEBUFF"},
			--末日降临
			{spellID = 603, unitID = "target", caster = "player", filter = "DEBUFF"},
			--獻祭
			{spellID = 157736, unitID = "target", caster = "player", filter = "DEBUFF"},
			--浩劫
			{spellID = 80240, unitID = "target", caster = "player", filter = "DEBUFF"},
			--恐懼嚎叫
			{spellID = 5484, unitID = "target", caster = "player", filter = "DEBUFF"},
			--死亡纏繞
			{spellID = 6789, unitID = "target", caster = "player", filter = "DEBUFF"},
			--暗影之怒
			{spellID = 30283, unitID = "target", caster = "player", filter = "DEBUFF"},
			--奴役惡魔
			{spellID = 1098, unitID = "pet", caster = "player", filter = "DEBUFF"},
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

			-- Doom
			{spellID = 603, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Agony
			{spellID = 980, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Corruption
			{spellID = 146739, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Seed of Corruption
			{spellID = 27243, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Immolate
			{spellID = 348, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 30108, unitID = "target", caster = "player", filter = "DEBUFF", absID = true},
			-- Haunt
			{spellID = 48181, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Fear
			{spellID = 118699, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Banish
			{spellID = 710, unitID = "focus", caster = "player", filter = "DEBUFF"},
			--恐懼嚎叫
            {spellID = 5484, unitID = "focus", caster = "all", filter = "DEBUFF"},
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
			-- Devour Magic (Felhunter)
			{spellID = 19505, filter = "CD"},
			-- Spell Lock (Felhunter)
			{spellID = 19647, filter = "CD"},
			-- Shadowfury
			{spellID = 30283, filter = "CD"},
			-- Howl of Terror
			{spellID = 5484, filter = "CD"},
			-- Mortal Coil
			{spellID = 6789, filter = "CD"},
			-- Sacrifice (Voidwalker)
			{spellID = 7812, filter = "CD"},
			-- Hand of Gul'dan
			{spellID = 105174, filter = "CD"},
			-- Demonic Circle: Teleport
			{spellID = 48020, filter = "CD"},
			-- Felstorm
			{spellID = 89751, filter = "CD"},
			-- Soulburn
			{spellID = 74434, filter = "CD"},
			-- Grimoire of Service
			{spellID = 108501, filter = "CD"},

			-- Racial
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Escape Artist (Gnome)
			{spellID = 20589, filter = "CD"},
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
