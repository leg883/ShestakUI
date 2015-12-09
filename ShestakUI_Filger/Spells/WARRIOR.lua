local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["WARRIOR"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--勝利
			{spellID = 32216, unitID = "player", caster = "player", filter = "BUFF"},
			--嗜血
			{spellID = 23881, filter = "CD"},
			--巨人打击
			{spellID = 86346, filter = "CD"},
	},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--驟亡
			{spellID = 52437, unitID = "player", caster = "player", filter = "BUFF"},
			--狂暴之怒
			{spellID = 18499, unitID = "player", caster = "player", filter = "BUFF"},
			--魯莽
			{spellID = 1719, unitID = "player", caster = "player", filter = "BUFF"},
			--熱血沸騰
			{spellID = 46916, unitID = "player", caster = "player", filter = "BUFF"},
			--劍盾合璧
			{spellID = 50227, unitID = "player", caster = "player", filter = "BUFF"},
			--蓄血
			{spellID = 64568, unitID = "player", caster = "player", filter = "BUFF"},
			--法術反射
			{spellID = 23920, unitID = "player", caster = "player", filter = "BUFF"},
			--勝利衝擊
			{spellID = 34428, unitID = "player", caster = "player", filter = "BUFF"},
			--盾牌格擋
			{spellID = 132404, unitID = "player", caster = "player", filter = "BUFF"},
			--盾墻
			{spellID = 871, unitID = "player", caster = "player", filter = "BUFF"},
			--狂怒恢復
			{spellID = 55694, unitID = "player", caster = "player", filter = "BUFF"},
			--橫掃攻擊
			{spellID = 12328, unitID = "player", caster = "player", filter = "BUFF"},
			--绞肉机
			{spellID = 85739, unitID = "player", caster = "player", filter = "BUFF"},
			--狂怒之擊!
			{spellID = 131116, unitID = "player", caster = "player", filter = "BUFF"},
			--浴血
			{spellID = 12292, unitID = "player", caster = "player", filter = "BUFF"},
			--怒击！
			{spellID = 131116, unitID = "player", caster = "player", filter = "BUFF"},
			--剑刃风暴
			{spellID = 46924, unitID = "player", caster = "player", filter = "BUFF"},
			--激怒
			{spellID = 12880, unitID = "player", caster = "player", filter = "BUFF"},
			--死亡裁决
			{spellID = 144442, unitID = "player", caster = "player", filter = "BUFF"},
			--盾牌屏障
			{spellID = 112048, unitID = "player", caster = "player", filter = "BUFF"},
			--最后通牒
			{spellID = 122510, unitID = "player", caster = "player", filter = "BUFF"},
			--剑在人在
			{spellID = 118038, unitID = "player", caster = "player", filter = "BUFF"},
			--盾牌冲锋
			{spellID = 156321, unitID = "player", caster = "player", filter = "BUFF"},
			--盾牌冲锋
			{spellID = 169667, unitID = "player", caster = "player", filter = "BUFF"},
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

			--撕裂
			{spellID = 772, unitID = "target", caster = "player", filter = "DEBUFF"},
			--震盪波
			{spellID = 46968, unitID = "target", caster = "all", filter = "DEBUFF"},
			--斷筋
			{spellID = 1715, unitID = "target", caster = "all", filter = "DEBUFF"},
			--挫志怒吼
			{spellID = 1160, unitID = "target", caster = "player", filter = "DEBUFF"},
			--破膽怒吼
			{spellID = 5246, unitID = "target", caster = "player", filter = "DEBUFF"},
			--巨人打击
			{spellID = 167105, unitID = "target", caster = "player", filter = "DEBUFF"},
			--感染之傷(德魯伊)
			{spellID = 48484, unitID = "target", caster = "all", filter = "DEBUFF"},
			--挫志咆哮(德魯伊)
			{spellID = 99, unitID = "target", caster = "all", filter = "DEBUFF"},
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
			-- Pummel
			{spellID = 6552, filter = "CD"},
			-- Shield Slam
			{spellID = 23922, filter = "CD"},
			-- Shockwave
			{spellID = 46968, filter = "CD"},
			-- Storm Bolt
			{spellID = 107570, filter = "CD"},
			-- Thunder Clap
			{spellID = 6343, filter = "CD"},
			-- Taunt
			{spellID = 355, filter = "CD"},
			-- Colossus Smash
			{spellID = 86346, filter = "CD"},
			-- Charge
			{spellID = 100, filter = "CD"},
			-- Spell Reflection
			{spellID = 23920, filter = "CD"},
			-- Intervene
			{spellID = 3411, filter = "CD"},
			-- Berserker Rage
			{spellID = 18499, filter = "CD"},
			-- Heroic Leap
			{spellID = 6544, filter = "CD"},
			-- Demoralizing Shout
			{spellID = 1160, filter = "CD"},
			-- Enraged Regeneration
			{spellID = 55694, filter = "CD"},
			-- Shield Wall
			{spellID = 871, filter = "CD"},
			-- Last Stand
			{spellID = 12975, filter = "CD"},
			-- Rallying Cry
			{spellID = 97462, filter = "CD"},

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
