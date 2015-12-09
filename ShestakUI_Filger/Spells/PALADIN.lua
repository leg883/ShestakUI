local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["PALADIN"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--聖光信標
			{spellID = 53563, unitID = "player", caster = "player", filter = "BUFF"},
			--永恆之火
			{spellID = 114163, unitID = "player", caster = "player", filter = "BUFF"},
			--無私治療者
			{spellID = 114250, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--神聖之盾
			{spellID = 20925, unitID = "player", caster = "player", filter = "BUFF"},
			--神圣意志
			{spellID = 90174, unitID = "player", caster = "player", filter = "BUFF"},
			--破晓
			{spellID = 88819, unitID = "player", caster = "player", filter = "BUFF"},
			--神恩術
			{spellID = 31842, unitID = "player", caster = "player", filter = "BUFF"},
			--神圣复仇者
			{spellID = 105809, unitID = "player", caster = "player", filter = "BUFF"},
			--破曉之光
			{spellID = 88819, unitID = "player", caster = "player", filter = "BUFF"},
			--聖光灌注
			{spellID = 54149, unitID = "player", caster = "player", filter = "BUFF"},
			--聖佑術
			{spellID = 498, unitID = "player", caster = "player", filter = "BUFF"},
			--戰爭藝術
			{spellID = 59578, unitID = "player", caster = "player", filter = "BUFF"},
			--復仇之怒
			{spellID = 31884, unitID = "player", caster = "player", filter = "BUFF"},
			--精通光環
			{spellID = 31821, unitID = "player", caster = "player", filter = "BUFF"},
			--圣盾術
			{spellID = 642, unitID = "player", caster = "player", filter = "BUFF"},
			--忠誠防衛者
			{spellID = 31850, unitID = "player", caster = "player", filter = "BUFF"},
			--光速
			{spellID = 85499, unitID = "player", caster = "player", filter = "BUFF"},
			--公正之盾
			{spellID = 132403, unitID = "player", caster = "player", filter = "BUFF"},
			--榮耀壁壘
			{spellID = 114637, unitID = "player", caster = "player", filter = "BUFF"},
			--大十字軍
			{spellID = 85416, unitID = "player", caster = "player", filter = "BUFF"},
			--遠古諸王之光
			{spellID = 86678, unitID = "player", caster = "all", filter = "BUFF"},
			--道高一丈
			{spellID = 87173, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

			--聖光信標
			{spellID = 53563, unitID = "target", caster = "player", filter = "BUFF"},
			--纯净之手
			{spellID = 114039, unitID = "target", caster = "player", filter = "BUFF"},
			--永恒之火
			{spellID = 114163, unitID = "target", caster = "player", filter = "BUFF"},
			--处决审判
			{spellID = 114157, unitID = "target", caster = "player", filter = "BUFF"},
			--圣洁护盾
			{spellID = 20925, unitID = "target", caster = "player", filter = "BUFF"},
			--譴責
			{spellID = 31803, unitID = "target", caster = "player", filter = "DEBUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

			--制裁之錘
			{spellID = 853, unitID = "target", caster = "all", filter = "DEBUFF"},
			--制裁之拳
			{spellID = 105593, unitID = "target", caster = "all", filter = "DEBUFF"},
			--自律
			{spellID = 25771, unitID = "target", caster = "all", filter = "DEBUFF"},
			--罪之重擔
			{spellID = 110300, unitID = "target", caster = "player", filter = "DEBUFF"},
			--公正聖印
			{spellID = 20170, unitID = "target", caster = "player", filter = "DEBUFF"},
			--問罪
			{spellID = 2812, unitID = "target", caster = "player", filter = "DEBUFF"},
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
			-- Cleanse
			{spellID = 4987, filter = "CD"},
			-- Rebuke
			{spellID = 96231, filter = "CD"},
			-- Repentance
			{spellID = 20066, filter = "CD"},
			-- Turn Evil
			{spellID = 10326, filter = "CD"},
			-- Hammer of Justice
			{spellID = 853, filter = "CD"},
			-- Judgment
			{spellID = 20271, filter = "CD"},
			-- Consecration
			{spellID = 26573, filter = "CD"},
			-- Holy Wrath
			{spellID = 119072, filter = "CD"},
			-- Avenger's Shield
			{spellID = 31935, filter = "CD"},
			-- Exorcism
			{spellID = 879, filter = "CD"},
			-- Holy Prism
			{spellID = 114165, filter = "CD"},
			-- Hand of Freedom
			{spellID = 1044, filter = "CD"},
			-- Hand of Purity
			{spellID = 114039, filter = "CD"},
			-- Speed of Light
			{spellID = 85499, filter = "CD"},
			-- Divine Protection
			{spellID = 498, filter = "CD"},
			-- Execution Sentence
			{spellID = 114157, filter = "CD"},
			-- Light's Hammer
			{spellID = 114158, filter = "CD"},
			-- Blinding Light
			{spellID = 115750, filter = "CD"},
			-- Holy Avenger
			{spellID = 105809, filter = "CD"},
			-- Devotion Aura
			{spellID = 31821, filter = "CD"},
			-- Hand of Sacrifice
			{spellID = 6940, filter = "CD"},
			-- Avenging Wrath
			{spellID = 31884, filter = "CD"},
			-- Ardent Defender
			{spellID = 31850, filter = "CD"},
			-- Hand of Protection
			{spellID = 1022, filter = "CD"},

			-- Racial
			-- Every Man for Himself (Human)
			{spellID = 59752, filter = "CD"},
			-- Stoneform (Dwarf)
			{spellID = 20594, filter = "CD"},
			-- Gift of the Naaru (Draenei)
			{spellID = 28880, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Arcane Torrent (Blood Elf)
			{spellID = 69179, filter = "CD"},

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
