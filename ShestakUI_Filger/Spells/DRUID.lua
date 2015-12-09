local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["DRUID"] = {
		{
			Name = "P_BUFF",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_buff)},

			--生命之花
            {spellID = 33763, unitID = "player", caster = "player", filter = "BUFF"},
            --回春術
            {spellID = 774, unitID = "player", caster = "player", filter = "BUFF"},
            --癒合
            {spellID = 8936, unitID = "player", caster = "player", filter = "BUFF"},
            --共生
            {spellID = 100977, unitID = "player", caster = "player", filter = "BUFF"},
            --回春術(萌芽)
            {spellID = 155777, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "P_PROC",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].player_proc)},

				--日之巅
                {spellID = 171744, unitID = "player", caster = "player", filter = "BUFF"},
                --月之巅
                {spellID = 171743, unitID = "player", caster = "player", filter = "BUFF"},
                --月光增效
                {spellID = 164547, unitID = "player", caster = "player", filter = "BUFF"},
                --日光增效
                {spellID = 164545, unitID = "player", caster = "player", filter = "BUFF"},
                --流星
                {spellID = 93400, unitID = "player", caster = "player", filter = "BUFF"},
                --兇蠻咆哮
                {spellID = 52610, unitID = "player", caster = "player", filter = "BUFF"},
                --求生本能
                {spellID = 61336, unitID = "player", caster = "player", filter = "BUFF"},
                --節能施法
                {spellID = 16870, unitID = "player", caster = "player", filter = "BUFF"},
                --樹皮術
                {spellID = 22812, unitID = "player", caster = "player", filter = "BUFF"},
                --狂暴
                {spellID = 106951, unitID = "player", caster = "player", filter = "BUFF"},
                --狂暴恢復
                {spellID = 22842, unitID = "player", caster = "player", filter = "BUFF"},
                --猛獸迅捷
                {spellID = 69369, unitID = "player", caster = "player", filter = "BUFF"},
                --自然戒備
                {spellID = 124974, unitID = "player", caster = "player", filter = "BUFF"},
                --森林之魂
                {spellID = 114108, unitID = "player", caster = "player", filter = "BUFF"},
                --星殞術
                {spellID = 48505, unitID = "player", caster = "player", filter = "BUFF"},
                --星穹大連線
                {spellID = 112071, unitID = "player", caster = "player", filter = "BUFF"},
                --化身:艾露恩之眷
                {spellID = 117679, unitID = "player", caster = "player", filter = "BUFF"},
                --野性之心
                {spellID = 108294, unitID = "player", caster = "player", filter = "BUFF"},
                --化身:丛林之王
                {spellID = 102543, unitID = "player", caster = "player", filter = "BUFF"},
                --猛虎之怒
                {spellID = 5217, unitID = "player", caster = "player", filter = "BUFF"},
                --野蛮咆哮雕文
                {spellID = 174544, unitID = "player", caster = "player", filter = "BUFF"},
                --血腥爪击
                {spellID = 145152, unitID = "player", caster = "player", filter = "BUFF"},
                --粉碎
                {spellID = 158792, unitID = "player", caster = "player", filter = "BUFF"},
                --鬃毛倒竖
                {spellID = 155835, unitID = "player", caster = "player", filter = "BUFF"},
                --塞纳里奥结界
                {spellID = 102351, unitID = "player", caster = "player", filter = "BUFF"},
                --塞纳里奥结界:触发
                {spellID = 102352, unitID = "player", caster = "player", filter = "BUFF"},
                --狂暴:熊形态
                {spellID = 50334, unitID = "player", caster = "player", filter = "BUFF"},
                --化身:乌索克之子
                {spellID = 102558, unitID = "player", caster = "player", filter = "BUFF"},
                --巨熊之力
                {spellID = 159233, unitID = "player", caster = "player", filter = "BUFF"},
                --尖牙与利爪
                {spellID = 135286, unitID = "player", caster = "player", filter = "BUFF"},
                --野蛮防御
                {spellID = 132402, unitID = "player", caster = "player", filter = "BUFF"},
                --落日余晖
                {spellID = 155592, unitID = "player", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_BUFF",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_buff)},

				--生命之花
                {spellID = 33763, unitID = "target", caster = "player", filter = "BUFF"},
                --回春術
                {spellID = 774, unitID = "target", caster = "player", filter = "BUFF"},
                --癒合
                {spellID = 8936, unitID = "target", caster = "player", filter = "BUFF"},
                --精靈群襲
                {spellID = 102355, unitID = "target", caster = "all", filter = "DEBUFF"},
                --回春術(萌芽)
                {spellID = 155777, unitID = "target", caster = "player", filter = "BUFF"},
		},
		{
			Name = "T_PROC",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 37,
			Position = {unpack(C["filger_position"].target_proc)},

				--糾纏根鬚
                {spellID = 339, unitID = "target", caster = "all", filter = "DEBUFF"},
                --颶風術
                {spellID = 33786, unitID = "target", caster = "all", filter = "DEBUFF"},
                --月火術
                {spellID = 164812, unitID = "target", caster = "player", filter = "DEBUFF"},
                --日炎術
                {spellID = 164815, unitID = "target", caster = "player", filter = "DEBUFF"},
                --掃擊
                {spellID = 1822, unitID = "target", caster = "player", filter = "DEBUFF"},
                --撕扯
                {spellID = 1079, unitID = "target", caster = "player", filter = "DEBUFF"},
                --割裂
                {spellID = 33745, unitID = "target", caster = "player", filter = "DEBUFF"},
                --痛擊
                {spellID = 106830, unitID = "target", caster = "player", filter = "DEBUFF"},
                --傷殘術
                {spellID = 22570, unitID = "target", caster = "player", filter = "DEBUFF"},
                --斜掠
                {spellID = 155722, unitID = "target", caster = "player", filter = "DEBUFF"},
                --痛击
                {spellID = 77758, unitID = "target", caster = "player", filter = "DEBUFF"},
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

			-- Lifebloom
			{spellID = 33763, unitID = "target", caster = "player", filter = "BUFF"},
			-- Rejuvenation
			{spellID = 774, unitID = "target", caster = "player", filter = "BUFF"},
			-- Regrowth
			{spellID = 8936, unitID = "target", caster = "player", filter = "BUFF"},
			-- Wild Growth
			{spellID = 48438, unitID = "target", caster = "player", filter = "BUFF"},
			-- Cenarion Ward
			{spellID = 102351, unitID = "target", caster = "player", filter = "BUFF"},
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

			-- Cyclone
			{spellID = 33786, unitID = "focus", caster = "all", filter = "DEBUFF"},
			-- Entangling Roots
			{spellID = 339, unitID = "focus", caster = "all", filter = "DEBUFF"},
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
			-- Nature's Cure
			{spellID = 88423, filter = "CD"},
			-- Remove Corruption
			{spellID = 2782, filter = "CD"},
			-- Skull Bash
			{spellID = 106839, filter = "CD"},
			-- Mangle
			{spellID = 33917, filter = "CD"},
			-- Wild Growth
			{spellID = 48438, filter = "CD"},
			-- Swiftmend
			{spellID = 18562, filter = "CD"},
			-- Growl
			{spellID = 6795, filter = "CD"},
			-- Maim
			{spellID = 22570, filter = "CD"},
			-- Starsurge
			{spellID = 78674, filter = "CD"},
			-- Wild Charge
			{spellID = 102401, filter = "CD"},
			-- Force of Nature
			{spellID = 102693, filter = "CD"},
			-- Faerie Fire
			{spellID = 770, filter = "CD"},
			-- Tiger's Fury
			{spellID = 5217, filter = "CD"},
			-- Incapacitating Roar
			{spellID = 99, filter = "CD"},
			-- Mass Entanglement
			{spellID = 102359, filter = "CD"},
			-- Typhoon
			{spellID = 132469, filter = "CD"},
			-- Mighty Bash
			{spellID = 5211, filter = "CD"},
			-- Solar Beam
			{spellID = 78675, filter = "CD"},
			-- Barkskin
			{spellID = 22812, filter = "CD"},
			-- Ironbark
			{spellID = 102342, filter = "CD"},
			-- Nature's Swiftness
			{spellID = 132158, filter = "CD"},
			-- Ursol's Vortex
			{spellID = 102793, filter = "CD"},
			-- Nature's Vigil
			{spellID = 124974, filter = "CD"},
			-- Berserk
			{spellID = 106952, filter = "CD"},
			-- Incarnation: Son of Ursoc
			{spellID = 102558, filter = "CD"},
			-- Incarnation: Tree of Life
			{spellID = 33891, filter = "CD"},
			-- Incarnation: Chosen of Elunee
			{spellID = 102560, filter = "CD"},
			-- Incarnation: King of the Jungle
			{spellID = 102543, filter = "CD"},

			-- Racial
			-- Shadowmeld (Night Elf)
			{spellID = 58984, filter = "CD"},
			-- Darkflight (Worgen)
			{spellID = 68992, filter = "CD"},
			-- War Stomp (Tauren)
			{spellID = 20549, filter = "CD"},
			-- Berserking (Troll)
			{spellID = 26297, filter = "CD", absID = true},

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
