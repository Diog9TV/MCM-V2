local xx2 = 420;
local yy2 = 450;
local xx = 850;
local yy = 350;

function onUpdate()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', xx2, yy2)
	else
		triggerEvent('Camera Follow Pos', xx, yy)
	end
end

function onStepHit()
	if curStep == 2176 then
		xx = 600;
		yy = 350;
		xx2 = 600;
		yy2 = 350;
		setProperty('defaultCamZoom', 0.55)
		noteTweenX('byearrows1', 0, -200, 0.01, 'linear')
        noteTweenX('byearrows2', 1, -200, 0.01, 'linear')
        noteTweenX('byearrows3', 2, -200, 0.01, 'linear')
        noteTweenX('byearrows4', 3, -200, 0.01, 'linear')
		noteTweenX('middletime1', 4, 114, 0.01, 'linear')
        noteTweenX('middletime2', 5, 327, 0.01, 'linear')
        noteTweenX('middletime3', 6, 837, 0.01, 'linear')
        noteTweenX('middletime4', 7, 1050, 0.01, 'linear')
        doTweenAlpha('camHUDOff' ,'camHUD', 0, 0.00000001, 'linear')
        doTweenAlpha('camGameOff' ,'camGame', 0, 0.00000001, 'linear')
		setProperty('standoff.visible', true);	
		setProperty('frontlight.visible', true);
		setProperty('background.visible', false);	
		setProperty('kitchen.visible', false);
		setProperty('krabs.visible', false);	
		setProperty('squidwardLight.visible', false);
		setProperty('squidward2.visible', false);
		setProperty('boyfriendGroup.visible', false);	
	end
	if curStep == 2240 then
        doTweenAlpha('camHUDOff' ,'camHUD', 1, 0.00000001, 'linear')
        doTweenAlpha('camGameOff' ,'camGame', 1, 0.00000001, 'linear')
	end
end