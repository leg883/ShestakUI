local T, C, L, _ = unpack(ShestakUI)
if C.unitframe.enable ~= true then return end

C["filger_spells"] = {
	["ALL"] = {
		{	--P_SPECIAL
			Name = "P_SPECIAL",
			Direction = "RIGHT",
			Mode = "ICON",
			Interval = 3,
			Alpha = 1,
			IconSize = 45,
			Position = {unpack(C["filger_position"].player_special)},

			--飾品
				-- 尼萨姆斯(智力输出)
                {spellID = 187616, unitID = "player", caster = "all", filter = "BUFF"},
				-- 萨克图斯(坦克)
                {spellID = 187617, unitID = "player", caster = "all", filter = "BUFF"},
				-- 伊瑟拉鲁斯(治疗)
                {spellID = 187618, unitID = "player", caster = "all", filter = "BUFF"},
				-- 索拉苏斯(力量输出)
                {spellID = 187619, unitID = "player", caster = "all", filter = "BUFF"},
				-- 玛鲁斯(敏捷输出)
                {spellID = 187620, unitID = "player", caster = "all", filter = "BUFF"},
				
			--飾品
				--錮法索銀指環 690
                -- 大法師的白熱光 (智力) 
                {spellID = 177159, unitID = "player", caster = "player", filter = "BUFF"}, 
                -- 大法師的白熱光 (力量) 
                {spellID = 177160, unitID = "player", caster = "player", filter = "BUFF"}, 
                -- 大法師的白熱光 (敏捷) 
                {spellID = 177161, unitID = "player", caster = "player", filter = "BUFF"}, 

                --錮法符文指環 715
                -- 大法師的白熱強光 (智力) 
                {spellID = 177176, unitID = "player", caster = "player", filter = "BUFF"}, 
                -- 大法師的白熱強光 (力量) 
                {spellID = 177175, unitID = "player", caster = "player", filter = "BUFF"}, 
                -- 大法師的白熱強光 (敏捷) 
                {spellID = 177172, unitID = "player", caster = "player", filter = "BUFF"},

                -- 暗月卡牌
				-- 骑士徽章 (爆击, 触发)
                {spellID = 162917, unitID = "player", caster = "all", filter = "BUFF"},
                -- 战争之颅 (爆击, 触发)
                {spellID = 162915, unitID = "player", caster = "all", filter = "BUFF"},
                -- 睡魔之袋 (爆击, 触发)
                {spellID = 162919, unitID = "player", caster = "all", filter = "BUFF"},
                -- 羽翼沙漏 (精神, 触发)
                {spellID = 162913, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉珑圣物 (智力, 触发)
                {spellID = 128985, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雪怒圣物 (力量, 触发)
                {spellID = 128986, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雪怒圣物 (敏捷, 触发)
                {spellID = 128984, unitID = "player", caster = "all", filter = "BUFF"},
                -- 赤精圣物 (精神, 触发)
                {spellID = 128987, unitID = "player", caster = "all", filter = "BUFF"},

                -- 物理DPS
				--60200地狱火堡垒
				-- 暴君活力 恶毒熏炉124226
                {spellID = 183926, unitID = "player", caster = "all", filter = "BUFF"},
				-- 魂飞魄散 灵魂之匣124225
                {spellID = 184293, unitID = "player", caster = "all", filter = "BUFF"},
				-- 嗜血猛击 无餍之饥124236
                {spellID = 183941, unitID = "player", caster = "all", filter = "BUFF"},
				-- 复仇专注 辩护圣契124518
                {spellID = 185102, unitID = "player", caster = "all", filter = "BUFF"},
				-- 狂战士之怒 灭世者的决意124523
                {spellID = 185230, unitID = "player", caster = "all", filter = "BUFF"},

                -- 黑心执行者勋章
                {spellID = 176984, unitID = "player", caster = "all", filter = "BUFF"},
                -- 双面幸运金币
                {spellID = 177597, unitID = "player", caster = "all", filter = "BUFF"},
                -- 毁灭之鳞
                {spellID = 177038, unitID = "player", caster = "all", filter = "BUFF"},
                -- 多肉龙脊奖章
                {spellID = 177035, unitID = "player", caster = "all", filter = "BUFF"},
                -- 跃动的山脉之心
                {spellID = 176878, unitID = "player", caster = "all", filter = "BUFF"},
                -- 蜂鸣黑铁触发器
                {spellID = 177067, unitID = "player", caster = "all", filter = "BUFF"},
                -- 既定之天命 (敏捷, 触发)
                {spellID = 146308, unitID = "player", caster = "all", filter = "BUFF"},
                -- 哈洛姆的护符 (敏捷, 触发)
                {spellID = 148903, unitID = "player", caster = "all", filter = "BUFF"},
                -- 暴怒之印 (敏捷, 触发)
                {spellID = 148896, unitID = "player", caster = "all", filter = "BUFF"},
                -- 滴答作响的黑色雷管 (敏捷, 触发)
                {spellID = 146310, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雪怒之律 (爆击, 触发)
                {spellID = 146312, unitID = "player", caster = "all", filter = "BUFF"},
                -- 邪恶魂能 (敏捷, 触发)
                {spellID = 138938, unitID = "player", caster = "all", filter = "BUFF"},
                -- 杀戮护符 (急速, 触发)
                {spellID = 138895, unitID = "player", caster = "all", filter = "BUFF"},
                -- 重生符文 (转换, 触发)
                {spellID = 139120, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 139121, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 139117, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雷纳塔基的灵魂符咒 (敏捷, 触发)
                {spellID = 138756, unitID = "player", caster = "all", filter = "BUFF"},
                -- 影踪突袭营的邪恶护符 (敏捷, 触发)
                {spellID = 138699, unitID = "player", caster = "all", filter = "BUFF"},
                -- 飞箭奖章 (爆击, 使用)
                {spellID = 136086, unitID = "player", caster = "all", filter = "BUFF"},
                -- 萦雾之恐 (爆击, 触发)
                {spellID = 126649, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉质盗匪俑 (急速, 使用)
                {spellID = 126599, unitID = "player", caster = "all", filter = "BUFF"},
                -- 群星之瓶 (敏捷, 触发)
                {spellID = 126554, unitID = "player", caster = "all", filter = "BUFF"},
				-- 炼金 飾品 (敏捷)
                {spellID = 60233, unitID = "player", caster = "all", filter = "BUFF"},
                -- 活体火山微粒
                {spellID = 176974, unitID = "player", caster = "all", filter = "BUFF"},
                -- 齐亚诺斯的剑鞘
                {spellID = 177189, unitID = "player", caster = "all", filter = "BUFF"},
                -- 泰克图斯的脉动之心
                {spellID = 177040, unitID = "player", caster = "all", filter = "BUFF"},
                -- 抽搐暗影之瓶
                {spellID = 176874, unitID = "player", caster = "all", filter = "BUFF"},
                -- 尖啸之魂号角
                {spellID = 177042, unitID = "player", caster = "all", filter = "BUFF"},
                -- 熔炉主管的徽记
                {spellID = 177096, unitID = "player", caster = "all", filter = "BUFF"},
                -- 迦拉卡斯的邪恶之眼 (力量, 触发)
                {spellID = 146245, unitID = "player", caster = "all", filter = "BUFF"},
                -- 索克的尾巴尖 (力量, 触发)
                {spellID = 146250, unitID = "player", caster = "all", filter = "BUFF"},
                -- 斯基尔的沁血护符 (力量, 触发)
                {spellID = 146285, unitID = "player", caster = "all", filter = "BUFF"},
                -- 融火之核 (力量, 触发)
                {spellID = 148899, unitID = "player", caster = "all", filter = "BUFF"},
                -- 天神迅捷 (急速, 触发)
                {spellID = 146296, unitID = "player", caster = "all", filter = "BUFF"},
                -- 季鹍的传说之羽 (力量, 触发)
                {spellID = 138759, unitID = "player", caster = "all", filter = "BUFF"},
                -- 赞达拉之火 (力量, 触发)
                {spellID = 138958, unitID = "player", caster = "all", filter = "BUFF"},
                -- 普莫迪斯的狂怒咒符 (力量, 触发)
                {spellID = 138870, unitID = "player", caster = "all", filter = "BUFF"},
                -- 双后的凝视 (爆击, 触发)
                {spellID = 139170, unitID = "player", caster = "all", filter = "BUFF"},
                -- 破盔者奖章 (爆击, 使用)
                {spellID = 136084, unitID = "player", caster = "all", filter = "BUFF"},
                -- 影踪突袭营的野蛮护符 (力量, 触发)
                {spellID = 138702, unitID = "player", caster = "all", filter = "BUFF"},
                -- 黑雾漩涡 (急速, 触发)
                {spellID = 126657, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雷神的遗诏 (力量, 触发)
                {spellID = 126582, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉质御者俑 (力量, 使用)
                {spellID = 126599, unitID = "player", caster = "all", filter = "BUFF"},
                -- 铁腹炒锅 (急速, 使用)
                {spellID = 129812, unitID = "player", caster = "all", filter = "BUFF"},

                -- 法系DPS
				--60200地狱火堡垒
				-- 焰舐者 黑暗之星碎片124522 暴击
                {spellID = 185229, unitID = "player", caster = "all", filter = "BUFF"},
				-- 精神疲劳 斥战祷言184915 伤害
                {spellID = 184915, unitID = "player", caster = "all", filter = "BUFF"},
				-- 黑暗之星印记 亵渎影月徽记 124228 智力
                {spellID = 183924, unitID = "player", caster = "all", filter = "BUFF"},
				-- 末日印记 恐惧预言124230 aoe
                {spellID = 184073, unitID = "player", caster = "all", filter = "BUFF"},
				
                -- 科普兰的清醒
                {spellID = 177594, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雷衝勳章 (智力, 使用)
                {spellID = 136082, unitID = "player", caster = "all", filter = "BUFF"},
                -- 翠玉執政官刻像 (暴擊, 使用)
                {spellID = 126605, unitID = "player", caster = "all", filter = "BUFF"},
                -- 動亂聚焦水晶
                {spellID = 176882, unitID = "player", caster = "all", filter = "BUFF"},
                -- 狂怒之心护符
                {spellID = 176980, unitID = "player", caster = "all", filter = "BUFF"},
                -- 虚无碎片
                {spellID = 176875, unitID = "player", caster = "all", filter = "BUFF"},
                -- 髟鼠蜥人灵魂容器
                {spellID = 177046, unitID = "player", caster = "all", filter = "BUFF"},
                -- 达玛克的无常护符
                {spellID = 177051, unitID = "player", caster = "all", filter = "BUFF"},
                -- 黑铁微型坩埚
                {spellID = 177081, unitID = "player", caster = "all", filter = "BUFF"},
                -- 伊墨苏斯的净化之缚 (智力, 触发)
                {spellID = 146046, unitID = "player", caster = "all", filter = "BUFF"},
                -- 卡德里斯的剧毒图腾 (智力, 触发)
                {spellID = 148906, unitID = "player", caster = "all", filter = "BUFF"},
                -- 亚煞极的黑暗之血 (智力, 触发)
                {spellID = 146184, unitID = "player", caster = "all", filter = "BUFF"},
                -- 狂怒水晶 (智力, 触发)
                {spellID = 148897, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉珑之噬 (爆击, 触发)
                {spellID = 146218, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雷神的精准之视 (智力, 触发)
                {spellID = 138963, unitID = "player", caster = "all", filter = "BUFF"},
                -- 张叶的辉煌精华 (智力, 触发)
                {spellID = 139133, unitID = "player", caster = "all", filter = "BUFF"},
                -- 九头蛇之息 (智力, 触发)
                {spellID = 138898, unitID = "player", caster = "all", filter = "BUFF"},
                -- 乌苏雷的最终抉择 (智力, 触发)
                {spellID = 138786, unitID = "player", caster = "all", filter = "BUFF"},
                -- 影踪突袭营的烈性咒符 (急速, 触发)
                {spellID = 138703, unitID = "player", caster = "all", filter = "BUFF"},
                -- 惊怖精华 (急速, 触发)
                {spellID = 126659, unitID = "player", caster = "all", filter = "BUFF"},
                -- 宇宙之光 (智力, 触发)
                {spellID = 126577, unitID = "player", caster = "all", filter = "BUFF"},
				
				-- 坦克
				--60200地狱火堡垒
				-- 不朽暴君 暴君赦令124242 耐力
                {spellID = 184770, unitID = "player", caster = "all", filter = "BUFF"},
				-- 安苏之翼 安苏的诅咒之羽124240 精通
                {spellID = 183931, unitID = "player", caster = "all", filter = "BUFF"},
				
                -- 岩心雕像
                {spellID = 176982, unitID = "player", caster = "all", filter = "BUFF"},
                -- 齐布的愚忠
                {spellID = 176460, unitID = "player", caster = "all", filter = "BUFF"},
                -- 普尔的盲目之眼
                {spellID = 176876, unitID = "player", caster = "all", filter = "BUFF"},
                -- 石化食肉孢子
                {spellID = 165824, unitID = "player", caster = "all", filter = "BUFF"},
                -- 不眠奥术精魂
                {spellID = 177053, unitID = "player", caster = "all", filter = "BUFF"},
                -- 无懈合击石板
                {spellID = 176873, unitID = "player", caster = "all", filter = "BUFF"},
                -- 爆裂熔炉之门
                {spellID = 177056, unitID = "player", caster = "all", filter = "BUFF"},
                -- 重击护符
                {spellID = 177102, unitID = "player", caster = "all", filter = "BUFF"},
                -- 鲁克的不幸护符 (减伤, 使用)
                {spellID = 146343, unitID = "player", caster = "all", filter = "BUFF"},
                -- 砮皂之毅 (躲闪, 使用)
                {spellID = 146344, unitID = "player", caster = "all", filter = "BUFF"},
                -- 季鹍的复苏之风 (生命, 触发)
                {spellID = 138973, unitID = "player", caster = "all", filter = "BUFF"},
                -- 赞达拉之韧 (生命, 使用)
                {spellID = 126697, unitID = "player", caster = "all", filter = "BUFF"},
                -- 嗜血者的精致小瓶 (精通, 触发)
                {spellID = 138864, unitID = "player", caster = "all", filter = "BUFF"},
                -- 影踪突袭营的坚定护符 (躲闪, 使用)
                {spellID = 138728, unitID = "player", caster = "all", filter = "BUFF"},
                -- 梦魇残片 (躲闪, 触发)
                {spellID = 126646, unitID = "player", caster = "all", filter = "BUFF"},
                -- 龙血之瓶 (躲闪, 触发)
                {spellID = 126533, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉质军阀俑 (精通, 使用)
                {spellID = 126597, unitID = "player", caster = "all", filter = "BUFF"},

                -- 治療
				--60200地狱火堡垒
				-- 顿悟 直觉之赐124232 暴击
                {spellID = 183929, unitID = "player", caster = "all", filter = "BUFF"},
				-- 影邪灌注 动荡邪影制剂124234 吸血效果
                {spellID = 184671, unitID = "player", caster = "all", filter = "BUFF"},
				-- 熠辉之光 辩护圣契124518 奶骑
                {spellID = 185100, unitID = "player", caster = "all", filter = "BUFF"},
				-- 纳鲁的训诫 斥战祷言124519 戒律牧
                {spellID = 184912, unitID = "player", caster = "all", filter = "BUFF"},
				
                -- 完美的活性蘑菇
                {spellID = 176978, unitID = "player", caster = "all", filter = "BUFF"},
                -- 腐蚀治疗徽章
                {spellID = 176879, unitID = "player", caster = "all", filter = "BUFF"},
                -- 元素师的屏蔽护符
                {spellID = 177063, unitID = "player", caster = "all", filter = "BUFF"},
                -- 铁刺狗玩具
                {spellID = 177060, unitID = "player", caster = "all", filter = "BUFF"},
                -- 自动修复灭菌器
                {spellID = 177086, unitID = "player", caster = "all", filter = "BUFF"},
                -- 傲慢之棱光囚笼 (智力, 触发)
                {spellID = 146314, unitID = "player", caster = "all", filter = "BUFF"},
                -- 纳兹戈林的抛光勋章 (智力, 触发)
                {spellID = 148908, unitID = "player", caster = "all", filter = "BUFF"},
                -- 索克的酸蚀之牙 (智力, 触发)
                {spellID = 148911, unitID = "player", caster = "all", filter = "BUFF"},
                -- 间歇性变异平衡器 (精神, 触发)
                {spellID = 146317, unitID = "player", caster = "all", filter = "BUFF"},
                -- 九头蛇卵的铭文袋 (吸收, 触发)
                {spellID = 140380, unitID = "player", caster = "all", filter = "BUFF"},
                -- 赫利东的垂死之息 (法力, 触发)
                {spellID = 138856, unitID = "player", caster = "all", filter = "BUFF"},
                -- 骄阳之魂 (精神, 触发)
                {spellID = 126640, unitID = "player", caster = "all", filter = "BUFF"},
                -- 秦希的偏振之印 (智力, 触发)
                {spellID = 126588, unitID = "player", caster = "all", filter = "BUFF"},
				
				--PvP飾品
				-- PvP飾品 (敏捷, 使用)
				{spellID = 126690, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP飾品 (敏捷, 觸發)
				{spellID = 126707, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP飾品 (力量, 使用)
				{spellID = 126679, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP飾品 (力量, 觸發)
				{spellID = 126700, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP 飾品 (生命上限)
				{spellID = 126697, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP 飾品 (全能)
				{spellID = 170397, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP飾品 (法術強度, 使用)
				{spellID = 126683, unitID = "player", caster = "all", filter = "BUFF"},
				-- PvP飾品 (法術強度, 觸發)
				{spellID = 126705, unitID = "player", caster = "all", filter = "BUFF"},

            --專業技能
                -- 神經突觸彈簧
                {spellID = 126734, unitID = "player", caster = "player", filter = "BUFF"},
                -- 硝基推進器
                {spellID = 54861, unitID = "player", caster = "all", filter = "BUFF"},
                -- 降落傘
                {spellID = 55001, unitID = "player", caster = "all", filter = "BUFF"},
                -- 德萊尼煉金石
                {spellID = 60234, unitID = "player", caster = "all", filter = "BUFF"},

            --武器附魔
                -- 涓咏
                {spellID = 116660, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉魂
                {spellID = 104993, unitID = "player", caster = "all", filter = "BUFF"},
                -- 钢铁之舞
                {spellID = 120032, unitID = "player", caster = "all", filter = "BUFF"},
                -- 爆裂领主的毁灭瞄准镜
                {spellID = 109085, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雷神之印
                {spellID = 159234, unitID = "player", caster = "all", filter = "BUFF"},
                -- 战歌之印
                {spellID = 159675, unitID = "player", caster = "all", filter = "BUFF"},
                -- 血环之印
                {spellID = 173322, unitID = "player", caster = "all", filter = "BUFF"},
                -- 霜狼之印
                {spellID = 159676, unitID = "player", caster = "all", filter = "BUFF"},
                -- 影月之印
                {spellID = 159678, unitID = "player", caster = "all", filter = "BUFF"},
                -- 黑石之印
                {spellID = 159679, unitID = "player", caster = "all", filter = "BUFF"},

            --藥水
                -- Draenic Agility Potion
                {spellID = 156423, unitID = "player", caster = "player", filter = "BUFF"},
                -- Draenic Intellect Potion
                {spellID = 156426, unitID = "player", caster = "player", filter = "BUFF"},
                -- Draenic Strength Potion
                {spellID = 156428, unitID = "player", caster = "player", filter = "BUFF"},
                -- Draenic Armor Potion
                {spellID = 156430, unitID = "player", caster = "player", filter = "BUFF"},
                -- 玉蛟
                {spellID = 105702, unitID = "player", caster = "player", filter = "BUFF"},
                -- 兔妖之咬
                {spellID = 105697, unitID = "player", caster = "player", filter = "BUFF"},
                -- 魔古之力
                {spellID = 105706, unitID = "player", caster = "player", filter = "BUFF"},
                -- 卡法加速
                {spellID = 125282, unitID = "player", caster = "player", filter = "BUFF"},

            --特殊buff
                -- 偷天換日
                {spellID = 57933, unitID = "player", caster = "all", filter = "BUFF"},
                -- 嗜血術
                {spellID = 2825, unitID = "player", caster = "all", filter = "BUFF"},
                -- 英勇氣概
                {spellID = 32182, unitID = "player", caster = "all", filter = "BUFF"},
                -- 時間扭曲
                {spellID = 80353, unitID = "player", caster = "all", filter = "BUFF"},
                -- 上古狂亂
                {spellID = 90355, unitID = "player", caster = "all", filter = "BUFF"},
                -- 警戒
                {spellID = 114030, unitID = "player", caster = "all", filter = "BUFF"},
                -- 群体法术反射
                {spellID = 114028, unitID = "player", caster = "all", filter = "BUFF"},
                -- 振奮咆哮
                {spellID = 97463, unitID = "player", caster = "all", filter = "BUFF"},
                -- 反魔法力场
                {spellID = 145629, unitID = "player", caster = "all", filter = "BUFF"},
                -- 犧牲聖禦
                {spellID = 6940, unitID = "player", caster = "all", filter = "BUFF"},
                -- 保護聖禦
                {spellID = 1022, unitID = "player", caster = "all", filter = "BUFF"},
                -- 虔誠光環
                {spellID = 31821, unitID = "player", caster = "all", filter = "BUFF"},
                -- 守护之魂
                {spellID = 47788, unitID = "player", caster = "all", filter = "BUFF"},
                -- 痛苦镇压
                {spellID = 33206, unitID = "player", caster = "all", filter = "BUFF"},
                -- 真言術：壁
                {spellID = 81782, unitID = "player", caster = "all", filter = "BUFF"},
                -- 吸血鬼的拥抱
                {spellID = 15286, unitID = "player", caster = "all", filter = "BUFF"},
                -- 灵魂链接图腾
                {spellID = 98008, unitID = "player", caster = "all", filter = "BUFF"},
                -- 气茧护体
                {spellID = 116849, unitID = "player", caster = "all", filter = "BUFF"},
                -- 烟雾弹
                {spellID = 88611, unitID = "player", caster = "all", filter = "BUFF"},
                -- 铁木树皮
                {spellID = 102342, unitID = "player", caster = "all", filter = "BUFF"},
                -- 奔窜咆哮
                {spellID = 106898, unitID = "player", caster = "all", filter = "BUFF"},
                -- 灵狐守护
                --{spellID = 172106, unitID = "player", caster = "all", filter = "BUFF"},
                -- 魔法增效
                --{spellID = 159916, unitID = "player", caster = "all", filter = "BUFF"},

            --橙色多彩
                -- 不屈之源钻 (耐力, 减伤)
                {spellID = 137593, unitID = "player", caster = "all", filter = "BUFF"},
                -- 阴险之源钻 (爆击, 急速)
                {spellID = 137590, unitID = "player", caster = "all", filter = "BUFF"},
                -- 英勇之源钻 (智力, 节能)
                {spellID = 137331, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 137247, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 137323, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 137326, unitID = "player", caster = "all", filter = "BUFF"},
                {spellID = 137288, unitID = "player", caster = "all", filter = "BUFF"},

            --橙色披风 
                -- 赤精之魂 (治疗)
                {spellID = 146200, unitID = "player", caster = "all", filter = "BUFF"},
                -- 雪怒之捷 (物理)
                {spellID = 146194, unitID = "player", caster = "all", filter = "BUFF"},
                -- 玉珑之精 (法系)
                {spellID = 146198, unitID = "player", caster = "all", filter = "BUFF"},
                -- 砮皂之韧 (坦克)
                {spellID = 148010, unitID = "player", caster = "all", filter = "BUFF"},

            --種族天賦
                -- 血之烈怒
                {spellID = 20572, unitID = "player", caster = "player", filter = "BUFF"},
                -- 狂暴
                {spellID = 26297, unitID = "player", caster = "player", filter = "BUFF"},
                -- 石像形态
                {spellID =  65116, unitID = "player", caster = "player", filter = "BUFF"},
                -- 疾步夜行
                {spellID =  68992, unitID = "player", caster = "player", filter = "BUFF"},
                -- 影遁
                {spellID =  58984, unitID = "player", caster = "player", filter = "BUFF"},
                -- 纳鲁的赐福
                {spellID =  28880, unitID = "player", caster = "all", filter = "BUFF"},

            --套装特效
			
				--德鲁伊
				--4T17 自然的睿智(堆叠)
				{spellID = 177794, unitID = "player", caster = "player", filter = "BUFF"},
				--4T17 自然的睿智(触发)
				{spellID = 167715, unitID = "player", caster = "player", filter = "BUFF"},
				--2T17 自然迅捷
				{spellID = 132158, unitID = "player", caster = "player", filter = "BUFF"},
				
				--牧师
				--T17 明澈思维
				{spellID = 167695, unitID = "player", caster = "player", filter = "BUFF"},
				--T17 強化大天使
				{spellID = 172359, unitID = "player", caster = "player", filter = "BUFF"},
				
				--法師
				--T17
				
				--圣骑士
				--2T17 指引之光战甲
				{spellID = 166831, unitID = "player", caster = "player", filter = "BUFF"},
				{spellID = 165442, unitID = "player", caster = "player", filter = "BUFF"},
		},
	},
}