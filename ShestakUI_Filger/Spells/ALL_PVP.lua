local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["ALL"] = {
		{	--PVE/PVP_P
			Name = "PVE/PVP_P",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 45,
			Position = {unpack(C["filger_position"].pve_player)},
		--职业
			--死亡騎士
                -- 啃食
                {spellID = 91800, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 暴猛痛擊
                {spellID = 91797, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 窒息術
                {spellID = 108194, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冷酷凜冬
                {spellID = 115001, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 絞殺
                {spellID = 47476, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 黑暗幻象
                {spellID = 77606, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰鍊術
                {spellID = 45524, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 凍瘡
                {spellID = 50435, unitID = "player", caster = "all", filter = "DEBUFF"},

            --德魯伊
                -- 颶風術
                {spellID = 33786, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 猛力重擊
                {spellID = 5211, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 傷殘術
                {spellID = 22570, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 掠魂咆哮
                {spellID = 99, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 太陽光束
                {spellID = 78675, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 精靈沉默
                {spellID = 114238, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 糾纏根鬚
                {spellID = 339, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 無法移動
                {spellID = 45334, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 感染之傷
                {spellID = 58180, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 颱風
                {spellID = 61391, unitID = "player", caster = "all", filter = "DEBUFF"},

            --獵人
                -- 豹群守護
                {spellID = 13159, unitID = "player", caster = "all", filter = "BUFF"},
                -- 脅迫
                {spellID = 24394, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 禁錮射擊
                {spellID = 117526, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰凍陷阱
                {spellID = 3355, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 翼龍釘刺
                {spellID = 19386, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 險裡逃生
                {spellID = 136634, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 震盪射擊
                {spellID = 5116, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 凍痕
                {spellID = 61394, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 霜雷之息 (奇特奇美拉)
                {spellID = 54644, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 腳踝粉碎 (鱷魚)
                {spellID = 50433, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 時間扭曲 (扭曲巡者)
                {spellID = 35346, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 音波衝擊 (蝙蝠)
                {spellID = 50519, unitID = "player", caster = "all", filter = "DEBUFF"},

                --法師
                -- 極度冰凍
                {spellID = 44572, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 變形術
                {spellID = 118, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 霜之環
                {spellID = 82691, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 龍之吐息
                {spellID = 31661, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 霜顎
                {spellID = 102051, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰凍術 (水元素)
                {spellID = 33395, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰霜新星
                {spellID = 122, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 寒冰結界
                {spellID = 111340, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰錐術
                {spellID = 120, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 減速術
                {spellID = 31589, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 寒冰箭
                {spellID = 116, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 霜火箭
                {spellID = 44614, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰凍
                {spellID = 7321, unitID = "player", caster = "all", filter = "DEBUFF"},

            --武僧
                -- 點穴
                {spellID = 115078, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 掃葉腿
                {spellID = 119381, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 狂拳連打
                {spellID = 120086, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 鐵牛衝鋒波
                {spellID = 119392, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 傷筋斷骨
                {spellID = 116706, unitID = "player", caster = "all", filter = "DEBUFF"},

            --聖騎士
                -- 制裁之錘
                {spellID = 853, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 制裁之拳
                {spellID = 105593, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 懺悔
                {spellID = 20066, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 盲目之光
                {spellID = 105421, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 復仇之盾
                {spellID = 31935, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 暈眩 - 復仇之盾
                {spellID = 63529, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 公正聖印
                {spellID = 20170, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 罪之重擔
                {spellID = 110300, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 問罪
                {spellID = 2812, unitID = "player", caster = "all", filter = "DEBUFF"},

            --牧師
                -- 支配心智
                {spellID = 605, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 心靈尖嘯
                {spellID = 8122, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 心靈恐慌
                {spellID = 64044, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 罪與罰
                {spellID = 87204, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 沉默
                {spellID = 15487, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 虛無觸鬚之握
                {spellID = 114404, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 心靈震爆雕紋
                {spellID = 87194, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 精神鞭笞
                {spellID = 15407, unitID = "player", caster = "all", filter = "DEBUFF"},

            --盜賊
                -- 腎擊
                {spellID = 408, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 偷襲
                {spellID = 1833, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 悶棍
                {spellID = 6770, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 致盲
                {spellID = 2094, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 鑿擊
                {spellID = 1776, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 絞喉 - 沉默
                {spellID = 1330, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 煙霧彈
                {spellID = 76577, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 擲殺
                {spellID = 26679, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 致殘毒藥
                {spellID = 3409, unitID = "player", caster = "all", filter = "DEBUFF"},

            --薩滿
                -- 妖術
                {spellID = 51514, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 靜電衝擊
                {spellID = 118905, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 粉碎
                {spellID = 118345, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 地震術
                {spellID = 77505, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 陷地
                {spellID = 64695, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 地縛術
                {spellID = 3600, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 冰霜震擊
                {spellID = 8056, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 雷霆風暴
                {spellID = 51490, unitID = "player", caster = "all", filter = "DEBUFF"},

            --術士
                -- 暗影之怒
                {spellID = 30283, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 投擲利斧 (惡魔守衛)
                {spellID = 89766, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 恐懼術
                {spellID = 118699, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 恐懼嚎叫
                {spellID = 5484, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 血性恐懼
                {spellID = 137143, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 死影纏繞
                {spellID = 6789, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 誘惑 (魅魔)
                {spellID = 6358, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 迷惑 (Shivarra)
                {spellID = 115268, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 痛苦動盪
                {spellID = 31117, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 焚燒
                {spellID = 17962, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 暗影之焰
                {spellID = 47960, unitID = "player", caster = "all", filter = "DEBUFF"},

            --戰士
                -- 暴風怒擲
                {spellID = 132169, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 震懾波
                {spellID = 132168, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 戰爭使者
                {spellID = 105771, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 震地怒吼
                {spellID = 107566, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 斷筋
                {spellID = 1715, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 刺耳怒吼
                {spellID = 12323, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 巨像碎擊
                {spellID = 86346, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 衝鋒昏迷
                {spellID = 7922, unitID = "player", caster = "all", filter = "DEBUFF"},

        --種族天賦
                -- 戰爭踐踏
                {spellID = 20549, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 震動掌
                {spellID = 107079, unitID = "player", caster = "all", filter = "DEBUFF"},
                -- 奧流之術
                {spellID = 28730, unitID = "player", caster = "all", filter = "DEBUFF"},

		--其他
                -- 火箭燃料漏油
                {spellID = 94794, unitID = "player", caster = "all", filter = "DEBUFF"},
		},
		{	--PVE/PVP_T
			Name = "PVE/PVP_T",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 45,
			Position = {unpack(C["filger_position"].pve_target)},

	--职业
		-- Death knight
			-- Anti-Magic Shell
			{spellID = 48707, unitID = "target", caster = "all", filter = "BUFF"},
			-- Desecrated Ground
			{spellID = 115018, unitID = "target", caster = "all", filter = "BUFF"},
			-- Lichborne
			{spellID = 49039, unitID = "target", caster = "all", filter = "BUFF"},
			-- Icebound Fortitude
			{spellID = 48792, unitID = "target", caster = "all", filter = "BUFF"},
			-- Pillar of Frost
			{spellID = 51271, unitID = "target", caster = "all", filter = "BUFF"},
			-- Death's Advance
			{spellID = 96268, unitID = "target", caster = "all", filter = "BUFF"},

			-- Debuffs
			-- Remorseless Winter
			{spellID = 115001, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Asphyxiate
			{spellID = 108194, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Gnaw (Ghoul)
			{spellID = 91800, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Monstrous Blow (Mutated Ghoul)
			{spellID = 91797, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Strangulate
			{spellID = 47476, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Druid
			-- Survival Instincts
			{spellID = 61336, unitID = "target", caster = "all", filter = "BUFF"},
			-- Barkskin
			{spellID = 22812, unitID = "target", caster = "all", filter = "BUFF"},
			-- Ironbark
			{spellID = 102342, unitID = "target", caster = "all", filter = "BUFF"},
			-- Nature's Grasp
			{spellID = 170856, unitID = "target", caster = "all", filter = "BUFF"},
			-- Stampeding Roar
			{spellID = 77764, unitID = "target", caster = "all", filter = "BUFF"},
			-- Incarnation: Tree of Life
			{spellID = 117679, unitID = "target", caster = "all", filter = "BUFF"},
			-- Berserk
			{spellID = 50334, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Cyclone
			{spellID = 33786, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mighty Bash
			{spellID = 5211, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Maim
			{spellID = 22570, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Rake
			{spellID = 163505, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Incapacitating Roar
			{spellID = 99, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Solar Beam
			{spellID = 78675, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Fae Silence
			{spellID = 114238, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Entangling Roots
			{spellID = 339, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Hunter
			-- Aspect of the Pack
			{spellID = 13159, unitID = "target", caster = "all", filter = "BUFF"},
			-- Aspect of the Cheetah
			{spellID = 5118, unitID = "target", caster = "all", filter = "BUFF"},
			-- Deterrence
			{spellID = 19263, unitID = "target", caster = "all", filter = "BUFF"},
			-- Posthaste
			{spellID = 118922, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Freezing Trap
			{spellID = 3355, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Wyvern Sting
			{spellID = 19386, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Binding Shot
			{spellID = 117526, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Intimidation
			{spellID = 24394, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Mage
			-- Ice Block
			{spellID = 45438, unitID = "target", caster = "all", filter = "BUFF"},
			-- Invisibility
			{spellID = 66, unitID = "target", caster = "all", filter = "BUFF"},
			-- Evocation
			{spellID = 12051, unitID = "target", caster = "all", filter = "BUFF"},
			-- Temporal Shield
			{spellID = 115610, unitID = "target", caster = "all", filter = "BUFF"},
			-- Alter Time
			{spellID = 110909, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Cauterize
			{spellID = 87023, unitID = "target", caster = "target", filter = "DEBUFF"},
			-- Polymorph
			{spellID = 118, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Deep Freeze
			{spellID = 44572, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Ring of Frost
			{spellID = 82691, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Dragon's Breath
			{spellID = 31661, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Frostjaw
			{spellID = 102051, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Monk
			-- Touch of Karma
			{spellID = 125174, unitID = "target", caster = "target", filter = "BUFF"},
			-- Ring of Peace
			{spellID = 116844, unitID = "target", caster = "target", filter = "BUFF"},
			-- Diffuse Magic
			{spellID = 122783, unitID = "target", caster = "target", filter = "BUFF"},
			-- Debuffs
			-- Paralysis
			{spellID = 115078, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Leg Sweep
			{spellID = 119381, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Fists of Fury
			{spellID = 120086, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Charging Ox Wave
			{spellID = 119392, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Paladin
			-- Divine Shield
			{spellID = 642, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Protection
			{spellID = 1022, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Sacrifice
			{spellID = 6940, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Freedom
			{spellID = 1044, unitID = "target", caster = "all", filter = "BUFF"},
			-- Hand of Purity
			{spellID = 114039, unitID = "target", caster = "all", filter = "BUFF"},
			-- Devotion Aura
			{spellID = 31821, unitID = "target", caster = "all", filter = "BUFF"},
			-- Ardent Defender
			{spellID = 31850, unitID = "target", caster = "all", filter = "BUFF"},
			-- Divine Protection
			{spellID = 498, unitID = "target", caster = "all", filter = "BUFF"},
			-- Guardian of Ancient Kings
			{spellID = 86659, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Hammer of Justice
			{spellID = 853, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Fist of Justice
			{spellID = 105593, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Repentance
			{spellID = 20066, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Turn Evil
			{spellID = 10326, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Blinding Light
			{spellID = 105421, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Avenger's Shield
			{spellID = 31935, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Priest
			-- Dispersion
			{spellID = 47585, unitID = "target", caster = "all", filter = "BUFF"},
			-- Pain Suppression
			{spellID = 33206, unitID = "target", caster = "all", filter = "BUFF"},
			-- Guardian Spirit
			{spellID = 47788, unitID = "target", caster = "all", filter = "BUFF"},
			-- Phantasm
			{spellID = 114239, unitID = "target", caster = "all", filter = "BUFF"},
			-- Fear Ward
			{spellID = 6346, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Dominate Mind
			{spellID = 605, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Psychic Scream
			{spellID = 8122, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Psychic Horror
			{spellID = 64044, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Silence
			{spellID = 15487, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Rogue
			-- Cloak of Shadows
			{spellID = 31224, unitID = "target", caster = "all", filter = "BUFF"},
			-- Evasion
			{spellID = 5277, unitID = "target", caster = "all", filter = "BUFF"},
			-- Cheating Death
			{spellID = 45182, unitID = "target", caster = "all", filter = "BUFF"},
			-- Combat Insight
			{spellID = 74002, unitID = "target", caster = "all", filter = "BUFF"},
			-- Shadow Dance
			{spellID = 51713, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Kidney Shot
			{spellID = 408, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Cheap Shot
			{spellID = 1833, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Sap
			{spellID = 6770, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Blind
			{spellID = 2094, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Garrote - Silence
			{spellID = 1330, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Smoke Bomb
			{spellID = 76577, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- Shaman
			-- Grounding Totem Effect
			{spellID = 8178, unitID = "target", caster = "all", filter = "BUFF"},
			-- Shamanistic Rage
			{spellID = 30823, unitID = "target", caster = "all", filter = "BUFF"},
			-- Spiritwalker's Grace
			{spellID = 79206, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Hex
			{spellID = 51514, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Static Charge
			{spellID = 118905, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Pulverize (Earth Elemental)
			{spellID = 118345, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Warlock
			-- Dark Bargain
			{spellID = 110913, unitID = "target", caster = "all", filter = "BUFF"},
			-- Unending Resolve
			{spellID = 104773, unitID = "target", caster = "all", filter = "BUFF"},
			-- Soulstone
			{spellID = 20707, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Banish
			{spellID = 710, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Shadowfury
			{spellID = 30283, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Axe Toss (Felguard)
			{spellID = 89766, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Fear
			{spellID = 118699, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Howl of Terror
			{spellID = 5484, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Blood Horror
			{spellID = 137143, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mortal Coil
			{spellID = 6789, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Seduction (Succubus)
			{spellID = 6358, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Mesmerize (Shivarra)
			{spellID = 115268, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Unstable Affliction
			{spellID = 31117, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},

		-- Warrior
			-- Spell Reflection
			{spellID = 23920, unitID = "target", caster = "all", filter = "BUFF"},
			-- Mass Spell Reflection
			{spellID = 114028, unitID = "target", caster = "all", filter = "BUFF"},
			-- Die by the Sword
			{spellID = 118038, unitID = "target", caster = "all", filter = "BUFF"},
			-- Shield Wall
			{spellID = 871, unitID = "target", caster = "all", filter = "BUFF"},
			-- Berserker Rage
			{spellID = 18499, unitID = "target", caster = "all", filter = "BUFF"},
			-- Last Stand
			{spellID = 12975, unitID = "target", caster = "all", filter = "BUFF"},
			-- Bladestorm
			{spellID = 46924, unitID = "target", caster = "all", filter = "BUFF"},
			-- Debuffs
			-- Storm Bolt
			{spellID = 132169, unitID = "target", caster = "all", filter = "DEBUFF", absID = true},
			-- Shockwave
			{spellID = 132168, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Intimidating Shout
			{spellID = 5246, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Silenced (Gag Order)
			{spellID = 18498, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Racial
			-- War Stomp
			{spellID = 20549, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Quaking Palm
			{spellID = 107079, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Arcane Torrent
			{spellID = 28730, unitID = "target", caster = "all", filter = "DEBUFF"},

			-- Heart of Fear
			-- Impaling Spear (Wind Lord Mel'jarak)
			{spellID = 122224, unitID = "target", caster = "all", filter = "DEBUFF"},

		-- All
			-- Warsong Flag
			{spellID = 23333, unitID = "target", caster = "all", filter = "BUFF"},
			{spellID = 23335, unitID = "target", caster = "all", filter = "BUFF"},
			-- Netherstorm Flag
			{spellID = 34976, unitID = "target", caster = "all", filter = "BUFF"},
			-- Orb of Power
			{spellID = 121175, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Carrying Seaforium
			{spellID = 66271, unitID = "target", caster = "all", filter = "DEBUFF"},
			-- Drink
			{spellID = 80167, unitID = "target", caster = "all", filter = "BUFF"},
		},
	},
}
