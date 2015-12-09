local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["PRIEST"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--真言術：盾
			{spellID = 17, unitID = "player", caster = "all", filter = "BUFF"},
			--虚弱靈魂
			{spellID = 6788, unitID = "player", caster = "all", filter = "DEBUFF"},
			--恢复
			{spellID = 139, unitID = "player", caster = "player", filter = "BUFF"},
			--漸隱術
			{spellID = 586, unitID = "player", caster = "player", filter = "BUFF"},
			--防護恐懼結界
			{spellID = 6346, unitID = "player", caster = "all", filter = "BUFF"},
			--預支時間
			{spellID = 59889, unitID = "player", caster = "player", filter = "BUFF"},
			--精神鞭笞雕文
			{spellID = 120587, unitID = "player", caster = "player", filter = "BUFF"},
			--身心合一
			{spellID = 65081, unitID = "player", caster = "all", filter = "BUFF"},
			--天使之羽
			{spellID = 121557, unitID = "player", caster = "all", filter = "BUFF"},
			--幻影術
			{spellID = 114239, unitID = "player", caster = "player", filter = "BUFF"},
			--愈合之语
			{spellID = 155362, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

			--機緣回復
			{spellID = 63735, unitID = "player", caster = "player", filter = "BUFF"},
			--佈道
			{spellID = 81661, unitID = "player", caster = "player", filter = "BUFF"},
			--大天使
			{spellID = 81700, unitID = "player", caster = "player", filter = "BUFF"},
			--影散
			{spellID = 47585, unitID = "player", caster = "player", filter = "BUFF"},
			--心靈鑚刺雕文
			{spellID = 81292, unitID = "player", caster = "player", filter = "BUFF"},
			--暗影强化(4T16)
			{spellID = 145180, unitID = "player", caster = "player", filter = "BUFF"},
			--鬼魅幻影
			{spellID = 119032, unitID = "player", caster = "player", filter = "BUFF"},
			--天使之壁
			{spellID = 114214, unitID = "player", caster = "player", filter = "BUFF"},
			--光之澎湃
			{spellID = 114255, unitID = "player", caster = "player", filter = "BUFF"},
			--黑暗奔騰
			{spellID = 87160, unitID = "player", caster = "player", filter = "BUFF"},
			--命運無常
			{spellID = 123254, unitID = "player", caster = "player", filter = "BUFF"},
			--注入能量
			{spellID = 10060, unitID = "player", caster = "player", filter = "BUFF"},
			--神聖洞察
			{spellID = 123267, unitID = "player", caster = "player", filter = "BUFF"},
			--幽暗洞察
			{spellID = 124430, unitID = "player", caster = "player", filter = "BUFF"},
			--精神護罩
			{spellID = 109964, unitID = "player", caster = "player", filter = "BUFF"},
			--暗言术：乱
			{spellID = 132573, unitID = "player", caster = "player", filter = "BUFF"},
			--愈合之语(十层)
			{spellID = 155363, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

			--真言术：盾
			{spellID = 17, unitID = "target", caster = "all", filter = "BUFF"},
			--虚弱灵魂
			{spellID = 6788, unitID = "target", caster = "all", filter = "DEBUFF"},
			--恢复
			{spellID = 139, unitID = "target", caster = "player", filter = "BUFF"},
			--防護恐懼結界
			{spellID = 6346, unitID = "target", caster = "all", filter = "BUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

			--束縛不死生物
			{spellID = 9484, unitID = "target", caster = "all", filter = "DEBUFF"},
			--心靈尖嘯
			{spellID = 8122, unitID = "target", caster = "all", filter = "DEBUFF"},
			--虛無觸鬚
			{spellID = 114404, unitID = "target", caster = "all", filter = "DEBUFF"},
			--支配心智
			{spellID = 605, unitID = "target", caster = "all", filter = "DEBUFF"},
			--暗言術:痛
			{spellID = 589, unitID = "target", caster = "player", filter = "DEBUFF"},
			--吸血之觸
			{spellID = 34914, unitID = "target", caster = "player", filter = "DEBUFF"},
			--噬靈瘟疫
			{spellID = 158831, unitID = "target", caster = "player", filter = "DEBUFF"},
			--心靈恐慌
			{spellID = 64044, unitID = "target", caster = "all", filter = "DEBUFF"},
			--沉默
			{spellID = 15487, unitID = "target", caster = "all", filter = "DEBUFF"},
			--守護聖靈
			{spellID = 47788, unitID = "target", caster = "all", filter = "BUFF"},
			--痛苦鎮壓
			{spellID = 33206, unitID = "target", caster = "all", filter = "BUFF"},
			--意志洞悉
			{spellID = 152118, unitID = "target", caster = "all", filter = "BUFF"},
			--虚空熵能
			{spellID = 155361, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Renew
			{spellID = 139, unitID = "target", caster = "player", filter = "BUFF"},
			-- Prayer of Mending
			{spellID = 41635, unitID = "target", caster = "player", filter = "BUFF"},
			-- Guardian Spirit
			{spellID = 47788, unitID = "target", caster = "player", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "target", caster = "player", filter = "BUFF"},
			-- Shadow Word: Pain
			{spellID = 589, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Vampiric Touch
			{spellID = 34914, unitID = "target", caster = "player", filter = "DEBUFF"},
			-- Devouring Plague
			{spellID = 2944, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Shackle Undead
			{spellID = 9484, unitID = "focus", caster = "player", filter = "DEBUFF"},
			-- Psychic Scream
			{spellID = 8122, unitID = "focus", caster = "player", filter = "DEBUFF"},
			--虛無觸鬚
            {spellID = 114404, unitID = "focus", caster = "all", filter = "DEBUFF"},
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
			-- Purify
			{spellID = 527, filter = "CD"},
			-- Mass Dispel
			{spellID = 32375, filter = "CD"},
			-- Penance
			{spellID = 47540, filter = "CD"},
			-- Mind Blast
			{spellID = 8092, filter = "CD"},
			-- Holy Fire
			{spellID = 14914, filter = "CD"},
			-- Circle of Healing
			{spellID = 34861, filter = "CD"},
			-- Prayer of Mending
			{spellID = 33076, filter = "CD"},
			-- Divine Star
			{spellID = 110744, filter = "CD"},
			-- Cascade
			{spellID = 121135, filter = "CD"},
			-- Archangel
			{spellID = 81700, filter = "CD"},
			-- Holy Word: Chastise
			{spellID = 88625, filter = "CD"},
			-- Halo
			{spellID = 120517, filter = "CD"},
			-- Shadow Word: Death
			{spellID = 32379, filter = "CD"},
			-- Psychic Scream
			{spellID = 8122, filter = "CD"},
			-- Psychic Horror
			{spellID = 64044, filter = "CD"},
			-- Silence
			{spellID = 15487, filter = "CD"},
			-- Power Infusion
			{spellID = 10060, filter = "CD"},
			-- Dispersion
			{spellID = 47585, filter = "CD"},
			-- Pain Suppression
			{spellID = 33206, filter = "CD"},
			-- Guardian Spirit
			{spellID = 47788, filter = "CD"},
			-- Power Word: Barrier
			{spellID = 62618, filter = "CD"},
			-- Desperate Prayer
			{spellID = 19236, filter = "CD"},
			-- Leap of Faith
			{spellID = 73325, filter = "CD"},
			-- Void Tendrils
			{spellID = 108920, filter = "CD"},

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
