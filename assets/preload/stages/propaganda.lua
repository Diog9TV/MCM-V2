-- Stage Stuff
function onCreate()
	makeLuaSprite('showroom', 'mcm/stages/propaganda/propaganda', -1200,-400);
	scaleObject('showroom', 2.0, 2.0)

	addLuaSprite('showroom', false);
	
		makeAnimatedLuaSprite('ford', 'mcm/stages/propaganda/ford', 420, 0)
luaSpriteAddAnimationByPrefix('ford', 'ford', 'Ford1', 13, true);
	scaleObject('ford', 2.0, 2.0)

		addLuaSprite("ford", false)
	end


if not lowQuality then
	function onBeatHit()
		if curBeat % 2 == 0 then
			playAnim("ford", "Ford1", true)
		end
	end
end