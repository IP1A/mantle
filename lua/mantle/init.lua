local function run_scripts()
	local cl = SERVER and AddCSLuaFile or include
	local sv = SERVER and include or function() end

	cl('colors.lua')
	cl('func_ui.lua')
end

local function init()
	if SERVER then
		resource.AddWorkshop('2924839375')
		resource.AddFile('materials/mantle/close_btn.png')
	end

	Mantle = Mantle or {}

	run_scripts()
end

init()
