local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["ROGUE"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--淺察
			{spellID = 84745, unitID = "player", caster = "player", filter = "BUFF"},
			--中度洞察
			{spellID = 84746, unitID = "player", caster = "player", filter = "BUFF"},
			--深度洞察
			{spellID = 84747, unitID = "player", caster = "player", filter = "BUFF"},
			--手裏劍
			{spellID = 137586, unitID = "player", caster = "player", filter = "BUFF"},
			--無聲之刃
			{spellID = 145193, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--疾跑
			{spellID = 2983, unitID = "player", caster = "player", filter = "BUFF"},
			--暗影披風
			{spellID = 31224, unitID = "player", caster = "player", filter = "BUFF"},
			--能量刺激
			{spellID = 13750, unitID = "player", caster = "player", filter = "BUFF"},
			--閃避
			{spellID = 5277, unitID = "player", caster = "player", filter = "BUFF"},
			--戰鬥就緒
			{spellID = 74001, unitID = "player", caster = "player", filter = "BUFF"},
			--毒化
			{spellID = 32645, unitID = "player", caster = "player", filter = "BUFF"},
			--極限殺戮
			{spellID = 58426, unitID = "player", caster = "player", filter = "BUFF"},
			--切割
			{spellID = 5171, unitID = "player", caster = "player", filter = "BUFF"},
			--偷天換日
			{spellID = 57934, unitID = "player", caster = "player", filter = "BUFF"},
			--偷天換日(傷害之後)
			{spellID = 59628, unitID = "player", caster = "player", filter = "BUFF"},
			--养精蓄锐
			{spellID = 73651, unitID = "player", caster = "player", filter = "BUFF"},
			--剑刃乱舞
			{spellID = 13877, unitID = "player", caster = "player", filter = "BUFF"},
			--佯攻
			{spellID = 1966, unitID = "player", caster = "player", filter = "BUFF"},
			--暗影之舞
			{spellID = 51713, unitID = "player", caster = "player", filter = "BUFF"},
			--敏銳大師
			{spellID = 31665, unitID = "player", caster = "player", filter = "BUFF"},
			--毀滅者之怒
			{spellID = 109949, unitID = "player", caster = "player", filter = "BUFF"},
			--洞悉要害
			{spellID = 121153, unitID = "player", caster = "player", filter = "BUFF"},
			--狂舞殘殺
			{spellID = 51690, unitID = "player", caster = "player", filter = "BUFF"},
			--毒藥師
			{spellID = 145249, unitID = "player", caster = "player", filter = "BUFF"},
			--欺敵
			{spellID = 115192, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

			--致命毒藥
			{spellID = 2818, unitID = "target", caster = "player", filter = "DEBUFF"},
			--致殘毒藥
			{spellID = 3409, unitID = "target", caster = "player", filter = "DEBUFF"},
			--吸血毒藥
			{spellID = 112961, unitID = "target", caster = "player", filter = "DEBUFF"},
			--致傷毒藥
			{spellID = 8680, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

			--偷襲
			{spellID = 1833, unitID = "target", caster = "all", filter = "DEBUFF"},
			--腎擊
			{spellID = 408, unitID = "target", caster = "all", filter = "DEBUFF"},
			--致盲
			{spellID = 2094, unitID = "target", caster = "all", filter = "DEBUFF"},
			--悶棍
			{spellID = 6770, unitID = "target", caster = "all", filter = "DEBUFF"},
			--割裂
			{spellID = 1943, unitID = "target", caster = "player", filter = "DEBUFF"},
			--絞喉
			{spellID = 703, unitID = "target", caster = "player", filter = "DEBUFF"},
			--絞喉沉默
			{spellID = 1330, unitID = "target", caster = "player", filter = "DEBUFF"},
			--鑿擊
			{spellID = 1776, unitID = "target", caster = "player", filter = "DEBUFF"},
			--出血
			{spellID = 89775, unitID = "target", caster = "player", filter = "DEBUFF"},
			--赤紅風暴
			{spellID = 122233, unitID = "target", caster = "player", filter = "DEBUFF"},
			--揭底之擊
			{spellID = 84617, unitID = "target", caster = "player", filter = "DEBUFF"},
			--宿怨
			{spellID = 79140, unitID = "target", caster = "player", filter = "DEBUFF"},
			--出血
			{spellID = 16511, unitID = "target", caster = "player", filter = "DEBUFF"},
			--找尋弱點
			{spellID = 91021, unitID = "target", caster = "player", filter = "DEBUFF"},
			--制裁之錘
			{spellID = 853, unitID = "target", caster = "all", filter = "DEBUFF"},
			--制裁之拳
			{spellID = 105593, unitID = "target", caster = "all", filter = "DEBUFF"},
			--暗影反射
			{spellID = 156745, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Blind
			{spellID = 2094, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Sap
			{spellID = 6770, unitID = "focus", caster = "player", filter = "DEBUFF"},
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
			-- Stealth
			{spellID = 1784, filter = "CD"},
			-- Kick
			{spellID = 1766, filter = "CD"},
			-- Gouge
			{spellID = 1776, filter = "CD"},
			-- Kidney Shot
			{spellID = 408, filter = "CD"},
			-- Premiditation
			{spellID = 14183, filter = "CD"},
			-- Sprint
			{spellID = 2983, filter = "CD"},
			-- Killing Spree
			{spellID = 51690, filter = "CD"},
			-- Adrenaline Rush
			{spellID = 13750, filter = "CD"},
			-- Vendetta
			{spellID = 79140, filter = "CD"},
			-- Shadow Dance
			{spellID = 51713, filter = "CD"},
			-- Combat Readiness
			{spellID = 74001, filter = "CD"},
			-- Vanish
			{spellID = 1856, filter = "CD"},

			-- Racial
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
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
			-- Quaking Palm (Pandaren)
			{spellID = 107079, filter = "CD"},
			-- Shadow Reflection
			{spellID = 152151, filter = "CD"},

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
