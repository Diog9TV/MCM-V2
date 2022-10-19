function onCreate()
	-- background shit
	makeLuaSprite('fondo', 'fondo masacre', -600, -300);
	setScrollFactor('fondo', 0.9, 0.9);
	scaleObject('fondo', 2.8, 2.8)
	makeLuaSprite('Nose', 'nose', -600, -300);
	scaleObject('Nose', 2.7, 2.7)
	setScrollFactor('nose', 0.9, 0.9);

	addLuaSprite('Nose', true);
	addLuaSprite('fondo', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
