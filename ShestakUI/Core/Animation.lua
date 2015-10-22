local T, C, L, _ = unpack(select(2, ...))

------------------------------------------------------------------------
-- [[ Animation Functions ]]
-- T:Anim_Shake							-- 震动
-- T:Anim_StopShake						-- 停止震动
-- T:Anim_ShakeHorizontal				-- 横向震动
-- T:Anim_StopShakeHorizontal			-- 停止横向震动
-- T:Anim_Flash							-- 闪现
-- T:Anim_StopFlash						-- 停止闪现
-- T:Anim_SlideIn						-- 滑入
-- T:Anim_SlideOut						-- 滑出
-- T:UIFrameFadeIn
-- T:UIFrameFadeOut
-- T:Fade								-- 自动淡入淡出
-- T:FadeTo								-- 指定淡入/淡出
-- T:Move								-- 自动移动
-- T:MoveTo								-- 指定移动方向
------------------------------------------------------------------------
local random = math.random

function T:SetUpAnimGroup(object, type, ...)
	if not type then type = 'Flash' end

	if type == 'Flash' then
		object.anim = object:CreateAnimationGroup("Flash")
		object.anim.fadein = object.anim:CreateAnimation("ALPHA", "FadeIn")
		object.anim.fadein:SetChange(1)
		object.anim.fadein:SetOrder(2)

		object.anim.fadeout = object.anim:CreateAnimation("ALPHA", "FadeOut")
		object.anim.fadeout:SetChange(-1)
		object.anim.fadeout:SetOrder(1)
	elseif type == 'FlashLoop' then
		object.anim = object:CreateAnimationGroup("Flash")
		object.anim.fadein = object.anim:CreateAnimation("ALPHA", "FadeIn")
		object.anim.fadein:SetChange(1)
		object.anim.fadein:SetOrder(2)

		object.anim.fadeout = object.anim:CreateAnimation("ALPHA", "FadeOut")
		object.anim.fadeout:SetChange(-1)
		object.anim.fadeout:SetOrder(1)

		object.anim:SetScript("OnFinished", function(self, requested)
			if(not requested) then
				object.anim:Play()
			end
		end)
	elseif type == 'Shake' then
		object.shake = object:CreateAnimationGroup("Shake")
		object.shake:SetLooping("REPEAT")
		object.shake.path = object.shake:CreateAnimation("Path")
		object.shake.path[1] = object.shake.path:CreateControlPoint()
		object.shake.path[2] = object.shake.path:CreateControlPoint()
		object.shake.path[3] = object.shake.path:CreateControlPoint()
		object.shake.path[4] = object.shake.path:CreateControlPoint()
		object.shake.path[5] = object.shake.path:CreateControlPoint()
		object.shake.path[6] = object.shake.path:CreateControlPoint()

		object.shake.path:SetDuration(0.7)
		object.shake.path[1]:SetOffset(random(-9, 7), random(-7, 12))
		object.shake.path[1]:SetOrder(1)
		object.shake.path[2]:SetOffset(random(-5, 9), random(-9, 5))
		object.shake.path[2]:SetOrder(2)
		object.shake.path[3]:SetOffset(random(-5, 7), random(-7, 5))
		object.shake.path[3]:SetOrder(3)
		object.shake.path[4]:SetOffset(random(-9, 9), random(-9, 9))
		object.shake.path[4]:SetOrder(4)
		object.shake.path[5]:SetOffset(random(-5, 7), random(-7, 5))
		object.shake.path[5]:SetOrder(5)
		object.shake.path[6]:SetOffset(random(-9, 7), random(-9, 5))
		object.shake.path[6]:SetOrder(6)
	elseif type == 'Shake_Horizontal' then
		object.shakeh = object:CreateAnimationGroup("ShakeH")
		object.shakeh:SetLooping("REPEAT")
		object.shakeh.path = object.shakeh:CreateAnimation("Path")
		object.shakeh.path[1] = object.shakeh.path:CreateControlPoint()
		object.shakeh.path[2] = object.shakeh.path:CreateControlPoint()
		object.shakeh.path[3] = object.shakeh.path:CreateControlPoint()
		object.shakeh.path[4] = object.shakeh.path:CreateControlPoint()
		object.shakeh.path[5] = object.shakeh.path:CreateControlPoint()
		object.shakeh.path[6] = object.shakeh.path:CreateControlPoint()

		object.shakeh.path:SetDuration(2)
		object.shakeh.path[1]:SetOffset(-5, 0)
		object.shakeh.path[1]:SetOrder(1)
		object.shakeh.path[2]:SetOffset(5, 0)
		object.shakeh.path[2]:SetOrder(2)
		object.shakeh.path[3]:SetOffset(-2, 0)
		object.shakeh.path[3]:SetOrder(3)
		object.shakeh.path[4]:SetOffset(5, 0)
		object.shakeh.path[4]:SetOrder(4)
		object.shakeh.path[5]:SetOffset(-2, 0)
		object.shakeh.path[5]:SetOrder(5)
		object.shakeh.path[6]:SetOffset(5, 0)
		object.shakeh.path[6]:SetOrder(6)
	elseif type == 'Shake_Vertical' then
		object.shakev = object:CreateAnimationGroup("ShakeV")
		object.shakev:SetLooping("REPEAT")
		object.shakev.path = object.shakev:CreateAnimation("Path")
		object.shakev.path[1] = object.shakev.path:CreateControlPoint()
		object.shakev.path[2] = object.shakev.path:CreateControlPoint()
		--object.shakev.path[3] = object.shakev.path:CreateControlPoint()
		--object.shakev.path[4] = object.shakev.path:CreateControlPoint()
		--object.shakev.path[5] = object.shakev.path:CreateControlPoint()
		--object.shakev.path[6] = object.shakev.path:CreateControlPoint()

		object.shakev.path:SetDuration(1)
		object.shakev.path[1]:SetOffset(0, 20)
		object.shakev.path[1]:SetOrder(1)
		object.shakev.path[2]:SetOffset(0, 0)
		object.shakev.path[2]:SetOrder(2)
		--object.shakev.path[3]:SetOffset(0, 6)
		--object.shakev.path[3]:SetOrder(3)
		--object.shakev.path[4]:SetOffset(0, -6)
		--object.shakev.path[4]:SetOrder(4)
		--object.shakev.path[5]:SetOffset(0, 6)
		--object.shakev.path[5]:SetOrder(5)
		--object.shakev.path[6]:SetOffset(0, -6)
		--object.shakev.path[6]:SetOrder(6)
	else
		local x, y, duration, customName = ...
		if not customName then
			customName = 'anim'
		end
		object[customName] = object:CreateAnimationGroup("Move_In")
		object[customName].in1 = object[customName]:CreateAnimation("Translation")
		object[customName].in1:SetDuration(0)
		object[customName].in1:SetOrder(1)
		object[customName].in2 = object[customName]:CreateAnimation("Translation")
		object[customName].in2:SetDuration(duration)
		object[customName].in2:SetOrder(2)
		object[customName].in2:SetSmoothing("OUT")
		object[customName].out1 = object:CreateAnimationGroup("Move_Out")
		object[customName].out2 = object[customName].out1:CreateAnimation("Translation")
		object[customName].out2:SetDuration(duration)
		object[customName].out2:SetOrder(1)
		object[customName].out2:SetSmoothing("IN")
		object[customName].in1:SetOffset(T.Scale(x), T.Scale(y))
		object[customName].in2:SetOffset(T.Scale(-x), T.Scale(-y))
		object[customName].out2:SetOffset(T.Scale(x), T.Scale(y))
		object[customName].out1:SetScript("OnFinished", function() object:Hide() end)
	end
end

function T:Anim_Shake(object)
	if not object.shake then
		T:SetUpAnimGroup(object, 'Shake')
	end

	object.shake:Play()
end

function T:Anim_StopShake(object)
	if object.shake then
		object.shake:Finish()
	end
end

function T:Anim_ShakeHorizontal(object)
	if not object.shakeh then
		T:SetUpAnimGroup(object, 'Shake_Horizontal')
	end

	object.shakeh:Play()
end

function T:Anim_StopShakeHorizontal(object)
	if object.shakeh then
		object.shakeh:Finish()
	end
end

function T:Anim_ShakeVertical(object)
	if not object.shakev then
		T:SetUpAnimGroup(object, 'Shake_Vertical')
	end

	object.shakev:Play()
end

function T:Anim_StopShakeVertical(object)
	if object.shakev then
		object.shakev:Finish()
	end
end

function T:Anim_Flash(object, duration, loop)
	if not object.anim then
		T:SetUpAnimGroup(object, loop and "FlashLoop" or 'Flash')
	end

	if not object.anim.playing then
		object.anim.fadein:SetDuration(duration)
		object.anim.fadeout:SetDuration(duration)
		object.anim:Play()
		object.anim.playing = true
	end
end

function T:Anim_StopFlash(object)
	if object.anim and object.anim.playing then
		object.anim:Stop()
		object.anim.playing = nil;
	end
end

function T:Anim_SlideIn(object, customName)
	if not customName then
		customName = 'anim'
	end
	if not object[customName] then return end

	object[customName].out1:Stop()
	object:Show()
	object[customName]:Play()
end

function T:Anim_SlideOut(object, customName)
	if not customName then
		customName = 'anim'
	end
	if not object[customName] then return end

	object[customName]:Finish()
	object[customName]:Stop()
	object[customName].out1:Play()
end

local frameFadeManager = CreateFrame("FRAME");
local FADEFRAMES = {};

function T:UIFrameFade_OnUpdate(elapsed)
	local index = 1;
	local frame, fadeInfo;
	while FADEFRAMES[index] do
		frame = FADEFRAMES[index];
		fadeInfo = FADEFRAMES[index].fadeInfo;
		-- Reset the timer if there isn't one, this is just an internal counter
		fadeInfo.fadeTimer = (fadeInfo.fadeTimer or 0) + elapsed;
		fadeInfo.fadeTimer = fadeInfo.fadeTimer + elapsed;

		-- If the fadeTimer is less then the desired fade time then set the alpha otherwise hold the fade state, call the finished function, or just finish the fade
		if ( fadeInfo.fadeTimer < fadeInfo.timeToFade ) then
			if ( fadeInfo.mode == "IN" ) then
				frame:SetAlpha((fadeInfo.fadeTimer / fadeInfo.timeToFade) * (fadeInfo.endAlpha - fadeInfo.startAlpha) + fadeInfo.startAlpha);
			elseif ( fadeInfo.mode == "OUT" ) then
				frame:SetAlpha(((fadeInfo.timeToFade - fadeInfo.fadeTimer) / fadeInfo.timeToFade) * (fadeInfo.startAlpha - fadeInfo.endAlpha)  + fadeInfo.endAlpha);
			end
		else
			frame:SetAlpha(fadeInfo.endAlpha);
			-- If there is a fadeHoldTime then wait until its passed to continue on
			if ( fadeInfo.fadeHoldTime and fadeInfo.fadeHoldTime > 0  ) then
				fadeInfo.fadeHoldTime = fadeInfo.fadeHoldTime - elapsed;
			else
				-- Complete the fade and call the finished function if there is one
				T:UIFrameFadeRemoveFrame(frame);
				if ( fadeInfo.finishedFunc ) then
					fadeInfo.finishedFunc(fadeInfo.finishedArg1, fadeInfo.finishedArg2, fadeInfo.finishedArg3, fadeInfo.finishedArg4);
					fadeInfo.finishedFunc = nil;
				end
			end
		end

		index = index + 1;
	end

	if ( #FADEFRAMES == 0 ) then
		frameFadeManager:SetScript("OnUpdate", nil);
	end
end

-- Generic fade function
function T:UIFrameFade(frame, fadeInfo)
	if (not frame) then
		return;
	end
	if ( not fadeInfo.mode ) then
		fadeInfo.mode = "IN";
	end
	local alpha;
	if ( fadeInfo.mode == "IN" ) then
		if ( not fadeInfo.startAlpha ) then
			fadeInfo.startAlpha = 0;
		end
		if ( not fadeInfo.endAlpha ) then
			fadeInfo.endAlpha = 1.0;
		end
		alpha = 0;
	elseif ( fadeInfo.mode == "OUT" ) then
		if ( not fadeInfo.startAlpha ) then
			fadeInfo.startAlpha = 1.0;
		end
		if ( not fadeInfo.endAlpha ) then
			fadeInfo.endAlpha = 0;
		end
		alpha = 1.0;
	end
	frame:SetAlpha(fadeInfo.startAlpha);

	frame.fadeInfo = fadeInfo;
	if not frame:IsProtected() then
		frame:Show();
	end

	local index = 1;
	while FADEFRAMES[index] do
		-- If frame is already set to fade then return
		if ( FADEFRAMES[index] == frame ) then
			return;
		end
		index = index + 1;
	end
	FADEFRAMES[#FADEFRAMES + 1] = frame
	frameFadeManager:SetScript("OnUpdate", T.UIFrameFade_OnUpdate);
end

-- Convenience function to do a simple fade in
function T:UIFrameFadeIn(frame, timeToFade, startAlpha, endAlpha)
	local fadeInfo = {};
	fadeInfo.mode = "IN";
	fadeInfo.timeToFade = timeToFade;
	fadeInfo.startAlpha = startAlpha;
	fadeInfo.endAlpha = endAlpha;
	T:UIFrameFade(frame, fadeInfo);
end

-- Convenience function to do a simple fade out
function T:UIFrameFadeOut(frame, timeToFade, startAlpha, endAlpha)
	local fadeInfo = {};
	fadeInfo.mode = "OUT";
	fadeInfo.timeToFade = timeToFade;
	fadeInfo.startAlpha = startAlpha;
	fadeInfo.endAlpha = endAlpha;
	T:UIFrameFade(frame, fadeInfo);
end

function T:tDeleteItem(table, item)
	local index = 1;
	while table[index] do
		if ( item == table[index] ) then
			tremove(table, index);
			break
		else
			index = index + 1;
		end
	end
end

function T:UIFrameFadeRemoveFrame(frame)
	T:tDeleteItem(FADEFRAMES, frame);
end

----------------------------------------------------------------------------------------------------
-- Extra Fade function
----------------------------------------------------------------------------------------------------
T.isfade = {}
function T:Fade(frame, timeToFade)
	if not frame:IsShown() then frame:Show() frame:SetAlpha(0) end
	if frame:GetAlpha() == 0 then
		T.isfade[frame] = true
	else
		T.isfade[frame] = false
	end
	local Step = 0
	local Updater = CreateFrame("Frame")
	if T.isfade[frame] == true then
		Updater:SetScript("OnUpdate", function(self, elapsed)
			T.UIFrameFadeIn(frame, timeToFade, frame:GetAlpha(), 1)
			Step = Step + 1
			if Step > timeToFade then
				self:SetScript("OnUpdate", nil)
				T.isfade[frame] = false
			end
		end)
	else
		Updater:SetScript("OnUpdate", function(self, elapsed)
			T.UIFrameFadeOut(frame, timeToFade, frame:GetAlpha(), 0)
			Step = Step + 1
			if Step > timeToFade then
				self:SetScript("OnUpdate", nil)
				T.isfade[frame] = true
			end
		end)
	end
end

function T:FadeTo(frame, timeToFade, mode)
	local Step = 0
	local Updater = CreateFrame("Frame")

	Updater:SetScript("OnUpdate", function(self, elapsed)
		if mode == "IN" then
			T.UIFrameFadeIn(frame, timeToFade, frame:GetAlpha(), 1)
		elseif mode == "OUT" then
			T.UIFrameFadeOut(frame, timeToFade, frame:GetAlpha(), 0)
		end
		Step = Step + 1
		if Step > timeToFade then
			if mode == "OUT" then frame:Hide() end
			self:SetScript("OnUpdate", nil)
		end
	end)
end


----------------------------------------------------------------------------------------------------
-- Extra Move function
----------------------------------------------------------------------------------------------------
T.ismove = {}
T.Onmove = {}
function T:Move(PANEL, direction, lock)
	if T.ismove[PANEL] == nil then T.ismove[PANEL] = true end
	if T.Onmove[PANEL] == nil then T.Onmove[PANEL] = false end
	if lock and UnitAffectingCombat("player") then print("战斗中无法移动！") return end

	local Anchor, relativeTo, relativePoint, OriginalX, OriginalY = PANEL:GetPoint()
	local Step, MaxStep = 0, 60
	local Height = PANEL:GetHeight() + 50
	local Width = PANEL:GetWidth() + 10
	local Updater = CreateFrame("Frame")

	if T.ismove[PANEL] and T.Onmove[PANEL] == false then
		Updater:SetScript("OnUpdate", function(self, elapsed)
			Step = Step + 1
			T.Onmove[PANEL] = true
			if direction == "RIGHT" then
				PANEL:SetPoint(Anchor, OriginalX + (Step/MaxStep)*Width, OriginalY)
			elseif direction == "LEFT" then
				PANEL:SetPoint(Anchor, OriginalX - (Step/MaxStep)*Width, OriginalY)
			elseif direction == "UP" then
				PANEL:SetPoint(Anchor, OriginalX, OriginalY + (Step/MaxStep)*Height)
			else
				PANEL:SetPoint(Anchor, OriginalX, OriginalY - (Step/MaxStep)*Height)
			end
			if Step >= MaxStep then
				self:SetScript("OnUpdate", nil)
				T.ismove[PANEL] = false
				T.Onmove[PANEL] = false
			end
		end) 
	elseif T.Onmove[PANEL] == false then
		Updater:SetScript("OnUpdate", function(self, elapsed)
			Step = Step + 1
			T.Onmove[PANEL] = true
			if direction == "RIGHT" then
				PANEL:SetPoint(Anchor, OriginalX - (Step/MaxStep)*Width, OriginalY)
			elseif direction == "LEFT" then
				PANEL:SetPoint(Anchor, OriginalX + (Step/MaxStep)*Width, OriginalY)
			elseif direction =="UP" then
				PANEL:SetPoint(Anchor, OriginalX, OriginalY - (Step/MaxStep)*Height)
			else
				PANEL:SetPoint(Anchor, OriginalX, OriginalY + (Step/MaxStep)*Height)
			end
			if Step >= MaxStep then
				self:SetScript("OnUpdate", nil)
				T.ismove[PANEL] = true
				T.Onmove[PANEL] = false
			end
		end)
	end
end


function T:MoveTo(PANEL, direction, lock)
	if lock and UnitAffectingCombat("player") then print("战斗中无法移动！") return end

	local Anchor, relativeTo, relativePoint, OriginalX, OriginalY = PANEL:GetPoint()
	local Step, MaxStep = 0, 60
	local Height = PANEL:GetHeight() + 50
	local Width = PANEL:GetWidth() + 10
	local Updater = CreateFrame("Frame")

	Updater:SetScript("OnUpdate", function(self, elapsed)
		Step = Step + 1
		if direction == "RIGHT" then
			PANEL:SetPoint(Anchor, OriginalX + (Step/MaxStep)*Width, OriginalY)
		elseif direction == "LEFT" then
			PANEL:SetPoint(Anchor, OriginalX - (Step/MaxStep)*Width, OriginalY)
		elseif direction =="UP" then
			PANEL:SetPoint(Anchor, OriginalX, OriginalY + (Step/MaxStep)*Height)
		else
			PANEL:SetPoint(Anchor, OriginalX, OriginalY - (Step/MaxStep)*Height)
		end
		if Step >= MaxStep then
			self:SetScript("OnUpdate", nil)
		end
	end)
end