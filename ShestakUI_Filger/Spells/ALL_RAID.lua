local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["ALL"] = {
		{	--P_RAID
			Name = "P_RAID",
			Direction = "LEFT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 60,
			Position = {unpack(C["filger_position"].player_raid)},

        --副本
			-- 60200地狱火堡垒
				-- 1 奇袭地狱火
				-- 邪火弹药 Felfire-Munitions
				{spellID = 180079, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 啸风战斧 howling-axe
				{spellID = 184369, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 颤抖 cower
				{spellID = 184238, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 猛击 slam
				{spellID = 184243, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 导电冲击脉冲 conducted-shock-pulse
				{spellID = 185806, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 钻孔 bore
				{spellID = 180022, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 灼烧 burn
				{spellID = 185157, unitID = "player", caster = "all", filter = "DEBUFF"},
				--M 腐化虹吸 corruption-siphon
				{spellID = 187655, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 2 钢铁掠夺者
				-- 献祭 immolation
				{spellID = 182074, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 不稳定的宝珠 unstable-orb
				{spellID = 182001, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 炮击 artillery
				{spellID = 182280, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 燃料尾痕 fuel-streak
				{spellID = 182003, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 迅猛突袭 blitz
				{spellID = 179897, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 185242, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 易爆火焰炸弹 firebomb-vulnerability
				{spellID = 185978, unitID = "player", caster = "all", filter = "DEBUFF"},
				--M 火焰易伤
				{spellID = 182373, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 3 考莫克
				-- 攫取之手 foul-crush
				{spellID = 181345, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能之触 fel-touch
				{spellID = 181321, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 爆裂冲击 explosive-burst
				{spellID = 181306, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪污碾压 crush 
				{spellID = 187819, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影血球 shadow-globule
				{spellID = 180270, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 炽热血球 fiery-globule
				{spellID = 185519, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪污血球 foul-globule
				{spellID = 185521, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影之池 shadowy-pool
				{spellID = 181082, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 火焰之池 fiery-pool
				{spellID = 186559, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪污之池 foul-pool
				{spellID = 186560, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 暗影残渣 shadow-residue
				{spellID = 181208, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 爆炸残渣 fiery-residue
				{spellID = 185686, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 邪恶残渣 foul-residue
				{spellID = 185687, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 4 地狱火高阶议会
				-- 死灵印记 mark-of-the-necromancer
				{spellID = 184449, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 184450, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 184676, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 185065, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 185066, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 梦魇幻影 nightmare-visage
				{spellID = 184673, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 堕落狂怒 fel-rage
				{spellID = 184360, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 酸性创伤 acidic-wound
				{spellID = 184847, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影收割 reap
				{spellID = 184652, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 污血 tainted-blood
				{spellID = 184357, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 血液沸腾 bloodboil
				{spellID = 184355, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 5 基爾羅格‧亡眼
				-- 剖心飞刀 heart-seeker
				{spellID = 188929, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 180389, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 邪能腐蚀 fel-corruption
				{spellID = 182159, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 184396, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 恶魔附身 demonic-possession
				{spellID = 180313, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 永痕的决心 undying-resolve
				{spellID = 180718, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 死亡幻象 vision-of-death
				{spellID = 181488, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 永恒的救赎 undying-salvation
				{spellID = 185563, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 碎甲 shredded-armor
				{spellID = 180200, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能烈焰 fel-flames
				{spellID = 180575, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 撕裂嚎叫 rending-howl
				{spellID = 183917, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 溅血 blood-splatter
				{spellID = 188852, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 邪能腐液 fel-puddle
				{spellID = 184067, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 6 血魔
				-- 灵魂箭雨 spirit-volley
				{spellID = 180093, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 死亡之影 shadow-of-death
				{spellID = 179864, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 血魔的腐化 gorefiends-corruption
				{spellID = 179867, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 消化 digest
				{spellID = 181295, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 生命渴望 hunger-for-life
				{spellID = 180148, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 毁灭之触 touch-of-doom
				{spellID = 179977, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 末日井 doom-well
				{spellID = 179995, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能之怒
				{spellID = 185190, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能烈焰
				{spellID = 185189, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 命运相连 shared-fate
				{spellID = 179908, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 179909, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 灵魂之池 pool-of-souls
				{spellID = 186770, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 7 暗影領主伊斯卡
				-- 安苏之光 radiance-of-anzu
				{spellID = 185239, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 幻影之伤 phantasmal-wounds
				{spellID = 182325, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能焚化 fel-fire
				{spellID = 182600, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 幻影之风 phantasmal-winds
				{spellID = 181957, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能飞轮 fel-chakram
				{spellID = 182200, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 182178, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 幻影邪能炸弹 phantasmal-fel-bomb
				{spellID = 179219, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能炸弹 fel-bomb
				{spellID = 181753, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 幻影腐蚀 phantasmal-corruption
				{spellID = 181824, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 幻影焚化 phantasmal-cremation
				{spellID = 187344, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 绝望之链 chains-of-despair
				{spellID = 185456, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 暗影之缚 dark-bindings
				{spellID = 185510, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 8 永恆者索奎薩爾
				-- 粉碎防御 shattered-defenses
				{spellID = 182038, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 易爆的邪能宝珠 volatile-fel-orb
				{spellID = 189627, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔炎殘渣 felblaze-residue
				{spellID = 182218, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能牢笼 fel-prison
				{spellID = 180415, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 压倒能量 overwhelming-power
				{spellID = 189540, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 堕落者之赐 gift-of-the-manari
				{spellID = 184124, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魅影重重 ghastly-fixation
				{spellID = 182769, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗言术:恶 shadow-word-agony
				{spellID = 184239, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 恶毒鬼魅 virulent-haunt
				{spellID = 182900, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- M 无尽饥渴 eternal-hunger
				{spellID = 188666, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- M 索克雷萨之咒 socrethars-contingency
				{spellID = 190776, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 9 女暴君維哈里
				-- 凋零契印 seal-of-decay
				{spellID = 180000, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 蔑视光环 aura-of-contempt
				{spellID = 179987, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 抑制光环 aura-of-oppression
				{spellID = 181683, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 怨恨光环 aura-of-malice
				{spellID = 179993, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 腐蚀序列 font-of-corruption
				{spellID = 180526, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 裂伤之触 touch-of-harm
				{spellID = 180166, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 180164, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 谴责法令 edict-of-condemnation
				{spellID = 182459, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 亵渎之地 despoiled-ground
				{spellID = 180604, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 10 惡魔領主札昆
				-- 破碎之魂 cloven-soul
				{spellID = 189260, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魂不附体 disembodied
				{spellID = 179407, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 潜伏能量 latent-energy
				{spellID = 182008, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 玷污 befouled
				{spellID = 189032, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 189031, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 189031, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 轰鸣的裂隙 rumbling-fissure
				{spellID = 179428, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 毁灭之种 seed-of-destruction
				{spellID = 181508, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 181515, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 邪能水晶 fel-crystals
				{spellID = 181653, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 枯竭灵魂 exhausted-soul
				{spellID = 188998, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 11 祖霍拉克
				-- 邪蚀 feltouched
				{spellID = 186134, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 灵媒 voidtouched
				{spellID = 186135, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪影屠戮 shadowfel-annihilation
				{spellID = 185656, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能炙烤 felsinged
				{spellID = 186073, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 虚空消耗 wasting-void
				{spellID = 186063, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔能喷涌 fel-surge
				{spellID = 186407, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 灵能涌动 void-surge
				{spellID = 186333, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪焰乱舞 felblaze-flurry
				{spellID = 186448, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 186453, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 凋零凝视 withering-gaze
				{spellID = 186785, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 186783, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 点燃 ablaze
				{spellID = 188208, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 黑洞 black-hole
				{spellID = 186547, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能锁链 chains-of-fel
				{spellID = 186500, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 強化魔化鎖鍊 empowered-chains-of-fel
				{spellID = 189775, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 12 瑪諾洛斯/mannoroth
				-- 军团诅咒 curse-of-the-legion
				{spellID = 181275, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 末日印记 mark-of-doom
				{spellID = 181099, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 末日之刺 doom-spike
				{spellID = 181119, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 189717, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 玛洛诺斯之血 blood-of-mannoroth
				{spellID = 182171, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 穿刺之伤 puncture-wound
				{spellID = 184252, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 191231, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 巨力冲击 massive-blast
				{spellID = 181359, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 玛诺洛斯凝视 mannoroths-gaze
				{spellID = 181597, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影之力 shadowforce
				{spellID = 181841, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 强化玛诺洛斯凝视 empowered-mannoroths-gaze
				{spellID = 182006, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 强化暗影之力 empowered-shadowforce 
				{spellID = 182088, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 凝视暗影 gazing-shadows
				{spellID = 182031, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- M 束缚暗影 gripping-shadows
				{spellID = 190482, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 13 阿克蒙德
				-- 暗影冲击 shadowfel-burst
				{spellID = 183634, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影冲击 shadow-blast
				{spellID = 187742, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 183864, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 死亡烙印 death-brand
				{spellID = 183828, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔火 doomfire
				{spellID = 183586, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔火锁定 doomfire-fixate
				{spellID = 182879, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 纳鲁之光 light-of-the-naaru
				{spellID = 183963, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 聚焦混乱 focused-chaos
				{spellID = 185014, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 精炼混乱 wrought-chaos
				{spellID = 186123, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 枷锁酷刑 shackled-torment
				{spellID = 184964, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 虚空放逐 nether-banish
				{spellID = 186952, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				{spellID = 186961, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 吞噬声明 devour-life
				{spellID = 187047, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 虚空撕裂 nether-tear
				{spellID = 189891, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 虚空腐化 nether-corruption
				{spellID = 190049, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 邪能腐蚀 fel-corruption
				{spellID = 188796, unitID = "player", caster = "all", filter = "DEBUFF"},
			-- 60200地狱火堡垒 结束
				
				
			-- 60100 WOD 黑石铸造厂 988
				-- 1	格鲁尔 [Gruul]
				-- 炼狱打击 (T)
				{spellID = 162322, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 压迫打击 (T)
				{spellID = 155078, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 炼狱切割
				{spellID = 155080, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 落石
				{spellID = 173192, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 石化
				{spellID = 155330, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				
				-- 2	奥尔高格 [Oregorger]
				-- 酸液巨口 (T)
				{spellID = 173471, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 酸液洪流
				{spellID = 156297, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 呕吐黑石
				{spellID = 156203, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 3	兽王达玛克 [Beastlord Darmac]
				-- 狂乱撕扯-狼 (T) 层
				{spellID = 155061, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 狂乱撕扯-BOSS (T) 层
				{spellID = 162283, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 灼烧躯体 (T) 层
				{spellID = 155030, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 碾碎护甲 (T) 层
				{spellID = 155236, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 地动山摇
				{spellID = 162276, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 爆燃
				{spellID = 155399, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 4	缚火者卡格拉兹 [Flamebender Ka'graz]
				-- 焦灼吐息 (T) 1~5 层
				{spellID = 155074, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 升腾烈焰 (T) 
				{spellID = 163284, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 烧灼
				{spellID = 155049, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 熔岩激流
				{spellID = 154932, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定
				{spellID = 154952, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 炽热光辉
				{spellID = 155277, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 5	汉斯加尔与弗兰佐克 [Hans'gar and Franzok]
				-- 折脊碎椎
				{spellID = 157139, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 灼热燃烧
				{spellID = 155818, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 6	主管索格尔 [Operator Thogar]
				-- 点燃 (T) 层
				{spellID = 155921, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 实验型脉冲手雷
				{spellID = 165195, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 燃烧
				{spellID = 164380, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 7	爆裂熔炉 [The Blast Furnace]
				-- 高热 (T) 层
				{spellID = 155242, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 淬火 (T)
				{spellID = 155240, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 崩裂
				{spellID = 156932, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 炸弹
				{spellID = 155192, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 防御
				{spellID = 160379, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 不稳定的火焰
				{spellID = 176121, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定
				{spellID = 155196, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 熔渣池
				{spellID = 155743, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 熔化
				{spellID = 155225, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 熔化
				{spellID = 155223, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				
				-- 8	克罗莫格 [Kromog]
				-- 扭曲护甲 (T) 4~5 层
				{spellID = 156766, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 纠缠之地符文
				{spellID = 157059, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 破碎大地符文
				{spellID = 161923, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 9	钢铁女武神 [The Iron Maidens]
				-- 急速射击
				{spellID = 156631, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 穿透射击
				{spellID = 164271, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影猎杀
				{spellID = 158315, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 浸血觅心者
				{spellID = 158010, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 致命投掷
				{spellID = 158692, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定
				{spellID = 158702, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 破甲
				{spellID = 158686, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 堕落之血
				{spellID = 158683, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 10	黑手 [Blackhand]
				-- 死亡标记
				{spellID = 156096, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定-被坦克追
				{spellID = 156653, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 炉渣冲击 156047/157018/157322
				{spellID = 156047, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 穿刺 156743/175020
				{spellID = 156743, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 巨力粉碎猛击
				{spellID = 158054, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 燃烧
				{spellID = 162490, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 熔火炉渣
				{spellID = 156401, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 烧伤
				{spellID = 156404, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 燃烧射击
				{spellID = 156772, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 投掷炉渣炸弹
				{spellID = 157000, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 投掷炉渣炸弹 (T)
				{spellID = 159179, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
			--WOD 黑石铸造厂 [结束]--
			
			
			--WOD 悬槌堡 994
				-- 1	卡加斯·刃拳 [Kargath Bladefist]
				-- 穿刺 (T)
				{spellID = 159113, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 迸裂创伤 (T) 1~2层
				{spellID = 159178, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 烈焰喷射
				{spellID = 159311, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 钢铁炸弹
				{spellID = 159386, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暴虐酒
				{spellID = 159413, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 搜寻猎物
				{spellID = 162497, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 2	屠夫 [The Butcher]
				-- 捶肉槌 (T) 2~3层
				{spellID = 156151, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 切肉刀
				{spellID = 156147, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 龟裂创伤
				{spellID = 156152, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 白鬼硫酸
				{spellID = 163046, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 3	泰克图斯 [Tectus]
				-- 石化
				{spellID = 162892, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 晶化弹幕 - 点名
				{spellID = 162346, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 晶化弹幕 - 踩到火
				{spellID = 162370, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				
				-- 4	布兰肯斯波 [Brackenspore]
				-- 溃烂 (T) 4~6层
				{spellID = 163241, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 死疽吐息
				{spellID = 159220, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 蚀脑真菌
				{spellID = 163140, unitID = "player", caster = "all", filter = "DEBUFF"},
				{spellID = 160179, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 滑溜溜的苔藓
				{spellID = 163590, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 爆裂灌注
				{spellID = 165223, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 回春孢子
				{spellID = 159426, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 5	独眼魔双子 [Twin Ogron]
				-- 防御削弱
				{spellID = 159709, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 致衰咆哮
				{spellID = 158026, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 烈焰
				{spellID = 158241, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥术之伤 (T)
				{spellID = 167200, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥能动荡
				{spellID = 163372, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 6	克拉戈 [Ko'ragh]
				-- 魔能散射：奥术 (T)
				{spellID = 162186, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔能散射：火焰
				{spellID = 162185, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔能散射：冰霜
				{spellID = 172813, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔能散射：暗影
				{spellID = 162184, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 废灵璧垒
				{spellID = 156803, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 压制力场
				{spellID = 161345, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 腐蚀能量
				{spellID = 161242, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 魔能散射：邪能 - 点名
				{spellID = 172895, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 魔能散射：邪能 - 踩到火
				{spellID = 172917, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				
				-- 7	元首马尔高克 [Imperator Mar'gok]
				-- 混沌标记 (T) P1换T
				{spellID = 158605, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 混沌标记：偏移 (T) P2换T
				{spellID = 164176, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 混沌标记：强固 (T) P3换T
				{spellID = 164178, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 混沌标记：复制 (T) P4换T
				{spellID = 164191, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥术愤怒 P1
				{spellID = 156225, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥术愤怒 P2
				{spellID = 164004, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥术愤怒 P3
				{spellID = 164005, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 奥术愤怒 P4
				{spellID = 164006, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 减速
				{spellID = 157801, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定
				{spellID = 157763, unitID = "player", caster = "all", filter = "DEBUFF", absID = true},
				-- 毁灭共鸣
				{spellID = 159200, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 碾碎护甲
				{spellID = 158553, unitID = "player", caster = "all", filter = "DEBUFF"},
			--WOD 悬槌堡 [结束]--
			
			
			-- 决战奥格瑞玛 Siege Of Orgrimmar 953
				-- 1	伊墨苏斯 [Immerseus]
				-- 邪煞池
				{spellID = 143297, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 腐蚀冲击
				{spellID = 143436, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 煞能腐蚀 H
				{spellID = 143579, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 2	堕落的守护者 [FallenProtectors]
				-- 锁喉
				{spellID = 143198, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 苦痛印记
				{spellID = 143840, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 暗影虚弱
				{spellID = 144176, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 煞能灼烧
				{spellID = 143423, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 3	诺鲁什 [Norushen]
				-- 净化
				{spellID = 144452, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 自惑
				{spellID = 146124, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 纠缠腐蚀
				{spellID = 144514, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 4	傲之煞 [ShaofPride]
				-- 受损自尊
				{spellID = 144358, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 傲气光环
				{spellID = 146817, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 投影
				{spellID = 146822, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 泰坦之赐
				{spellID = 146594, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 泰坦之力
				{spellID = 144364, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 动摇的决心 H
				{spellID = 147207, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 5	迦拉卡斯 [Galakras]
				-- 毒性云雾
				{spellID = 147705, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 烈焰箭
				{spellID = 146765, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 迦拉克隆之焰 (点名)
				--{spellID = 147068, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 迦拉克隆之焰 (debuff)
				{spellID = 147029, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 6	钢铁战蝎 [IronJuggernaut]
				-- 燃烧护甲
				{spellID = 144467, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 爆裂焦油
				{spellID = 144498, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 切割激光
				{spellID = 146325, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 7	库卡隆黑暗萨满 [KorkronDarkShaman]
				-- 冰霜风暴打击
				{spellID = 144215, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 撕裂
				{spellID = 144304, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 剧毒之雾
				{spellID = 144089, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 钢铁囚笼 H
				{spellID = 144330, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 8	纳兹戈林将军 [GeneralNazgrim]
				-- 碎甲重击
				{spellID = 143494, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 碎骨重锤
				{spellID = 143638, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 刺客印记
				{spellID = 143480, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 猎人印记
				{spellID = 143882, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 9	马尔考罗克 [Malkorok]
				-- 致命打击
				{spellID = 142990, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 散逸能量
				{spellID = 142913, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 受难 H
				{spellID = 143919, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 10	潘达利亚战利品 [SpoilsOfPandria]
				-- 设置炸药
				{spellID = 145987, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 浓缩信息素
				{spellID = 145747, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 11	嗜血的索克 [ThokTheBloodthirsty]
				-- 恐慌
				{spellID = 143766, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 灼热吐息
				{spellID = 143767, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 酸性吐息
				{spellID = 143780, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 冰冻吐息
				{spellID = 143773, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 锁定
				{spellID = 143445, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 冰冻之血
				{spellID = 143800, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 12	攻城匠师黑索 [SiegecrafterBlackfuse]
				-- 电荷冲击
				{spellID = 143385, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 过热
				{spellID = 143856, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 图像识别
				{spellID = 144236, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 13	卡拉克西英杰 [ParagonsOfTheKlaxxi]
				-- 注射
				{spellID = 143339, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 红色毒素
				{spellID = 142533, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 蓝色毒素
				{spellID = 142532, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 黄色毒素
				{spellID = 142534, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 橙色毒素
				{spellID = 142547, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 橙色催化爆炸之环
				{spellID = 142803, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 绿色毒素
				{spellID = 142549, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 绿色催化诡异之雾
				{spellID = 142945, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 紫色催化热罐燃料
				{spellID = 143572, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 白色毒素
				{spellID = 142550, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 血脉暴露
				{spellID = 142931, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 挥砍
				{spellID = 143275, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 基因变异
				{spellID = 143279, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 凿击
				{spellID = 143939, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 盾击
				{spellID = 143974, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 酸性血液
				{spellID = 142315, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 催眠术
				{spellID = 142671, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 瞄准
				{spellID = 142948, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 炎界的火线
				{spellID = 142808, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 变异缺陷
				{spellID = 148589, unitID = "player", caster = "all", filter = "DEBUFF"},
				
				-- 14	加尔鲁什·地狱咆哮 [GarroshHellscream]
				-- 绝望之握
				{spellID = 145183, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 强化绝望之握
				{spellID = 145195, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 绝望之破
				{spellID = 145213, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 信念
				{spellID = 148994, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 勇气
				{spellID = 148983, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 希望
				{spellID = 149004, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 亵渎(P2)
				--{spellID = 144762, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 亵渎(P3)
				{spellID = 144817, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 亚煞极之触
				{spellID = 145065, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 強化亚煞极之触
				{spellID = 145171, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 凝视 H
				{spellID = 147665, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 液态火焰 H
				{spellID = 147136, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 恶意 H
				{spellID = 147209, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 恶意冲击 H
				{spellID = 147235, unitID = "player", caster = "all", filter = "DEBUFF"},
				-- 决战奥格瑞玛 [结束]
		},
		{	--T_RAID
			Name = "T_RAID",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 60,
			Position = {unpack(C["filger_position"].target_raid)},

        --副本
			-- 60200地狱火堡垒
				-- 1 奇袭地狱火
				-- 英姿勃发 inspiring-presence
				{spellID = 185090, unitID = "target", caster = "all", filter = "BUFF"},
				-- 振奋狂哮 rallying-roar
				{spellID = 180319, unitID = "target", caster = "all", filter = "BUFF"},
				-- 恶魔变形 metamorphosis
				{spellID = 181968, unitID = "target", caster = "all", filter = "BUFF"},
				-- 修复 repair
				{spellID = 185816, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				{spellID = 188884, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				
				-- 2 钢铁掠夺者
				-- 重击 pounding
				{spellID = 182020, unitID = "target", caster = "all", filter = "BUFF"},
				
				-- 3 考莫克
				-- 激怒
				{spellID = 186882, unitID = "target", caster = "all", filter = "BUFF"},
				-- 暗影能量 shadow-energy
				{spellID = 180115, unitID = "target", caster = "all", filter = "BUFF"},
				-- 爆炸能量 explosive-energy
				{spellID = 180116, unitID = "target", caster = "all", filter = "BUFF"},
				-- 邪恶能量 foul-energy
				{spellID = 180117, unitID = "target", caster = "all", filter = "BUFF"},
				-- 重击 pound
				{spellID = 180244, unitID = "target", caster = "all", filter = "BUFF"},
				
				-- 4 地狱火高阶议会
				--梦魇幻影 nightmare-visage
				{spellID = 184657, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--邪能風暴 felstorm
				{spellID = 183701, unitID = "target", caster = "all", filter = "BUFF"},
				--愤怒 fury
				{spellID = 184359, unitID = "target", caster = "all", filter = "BUFF"},
				--堕落狂怒 fel-rage
				{spellID = 184358, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--毁灭飞跃 demolishing-leap
				{spellID = 184365, unitID = "target", caster = "all", filter = "BUFF"},
				--镜像 mirror-images
				{spellID = 183885, unitID = "target", caster = "all", filter = "BUFF"},
				
				--5 基爾羅格.亡眼
				--撕裂嚎叫 rending-howl
				{spellID = 186919, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--灰烬吐息 内场小怪
				{spellID = 180033, unitID = "target", caster = "all", filter = "BUFF"},
				--死亡挣扎 death-throes
				{spellID = 180224, unitID = "target", caster = "all", filter = "BUFF"},
				--死亡之门 deaths-door
				{spellID = 184551, unitID = "target", caster = "all", filter = "BUFF"},
				--野蛮打击 savage-strikes
				{spellID = 180163, unitID = "target", caster = "all", filter = "BUFF"},
				
				--6 血魔
				--生命渴望 hunger-for-life
				{spellID = 185038, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--灵魂纽带 nexus-of-souls
				{spellID = 180491, unitID = "target", caster = "all", filter = "BUFF"},
				--狂野怒吼 bellowing-shout
				{spellID = 181582, unitID = "target", caster = "all", filter = "BUFF"},
				--灵魂盛宴 feast-of-souls
				{spellID = 181973, unitID = "target", caster = "all", filter = "BUFF"},
				--M 抗拒
				{spellID = 189131, unitID = "target", caster = "all", filter = "BUFF"},
				
				--7 暗影領主伊斯卡
				--邪能导管
				{spellID = 181827, unitID = "target", caster = "all", filter = "BUFF"},
				--邪能强化
				{spellID = 181831, unitID = "target", caster = "all", filter = "BUFF"},
				
				--8 永恆者索奎薩爾
				--邪能壁垒 fel-barrier
				{spellID = 184053, unitID = "target", caster = "all", filter = "BUFF"},
				--恶毒鬼魅 virulent-haunt
				{spellID = 182925, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--M无尽饥渴 eternal-hunger
				{spellID = 188666, unitID = "target", caster = "all", filter = "BUFF", absID = true},
				--M 步履蹒跚 blooded-tracker
				{spellID = 188767, unitID = "target", caster = "all", filter = "BUFF"},
				
				--9 女暴君維哈里
				--统御者壁垒 sovereigns-ward
				{spellID = 180040, unitID = "target", caster = "all", filter = "BUFF"},
				--地火风暴 infernal-tempest
				{spellID = 180300, unitID = "target", caster = "all", filter = "BUFF"},
				
				--10 惡魔領主札昆
				
				--11 祖霍拉克
				--混乱压制 overwhelming-chaos
				{spellID = 187204, unitID = "target", caster = "all", filter = "BUFF"},
				
				--12 瑪諾洛斯/mannoroth
				--13 阿克蒙德
				-- 60200地狱火堡垒 结束--
		},
	},
}
