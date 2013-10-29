mg.register_ore({
	name = "air",
	seeddiff = 1234,
	maxhdistance = 70,
	maxvdistance = 70,
	maxheight = -3,
	seglenghtn = 15,
	seglenghtdev = 6,
	segincln = 0.2,
	segincldev = 0.6,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 5,
	numbranchesn = 2,
	numbranchesdev = 0,
	mothersizen = -1,
	mothersizedev = 0,
	sizen = 100,
	sizedev = 30,
	radius = 2.3
})

mg.register_ore({
	name = "default:stone_with_iron",
	wherein = "default:stone",
	seeddiff = 0,
	maxvdistance = 10.5,
	maxheight = -16,
	seglenghtn = 15,
	seglenghtdev = 6,
	segincln = 0,
	segincldev = 0.6,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 2.5
})

mg.register_ore({
	name = "default:stone_with_coal",
	wherein = "default:stone",
	seeddiff = 1,
	maxvdistance = 10,
	sizen = 54,
	sizedev = 27,
	maxheight = 64,
	seglenghtn = 15,
	seglenghtdev = 6,
	segincln = 0,
	segincldev = 0.36,
	turnangle = 57,
	forkturnangle = 57,
	radius = 1,
	numperblock = 6
})

mg.register_ore({
	name = "default:stone_with_mese",
	wherein = "default:stone",
	seeddiff = 2,
	maxvdistance = 50,
	sizen = 7,
	sizedev = 3,
	maxheight = -128,
	seglenghtn = 2,
	seglenghtdev = 1,
	segincln = 4,
	segincldev = 1,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 0.8,
	numbranchesn = 2,
	numbranchesdev = 1,
	fork_chance = 0.1,
	mothersizen = 0,
	mothersizedev = 0
})

mg.register_ore({
	name = "default:mese",
	wherein = "default:stone",
	seeddiff = 3,
	maxvdistance = 50,
	sizen = 3,
	sizedev = 1,
	maxheight = -1024,
	seglenghtn = 2,
	seglenghtdev = 1,
	segincln = 4,
	segincldev = 1,
	turnangle = 57,
	forkturnangle = 57,
	numbranchesn = 2,
	numbranchesdev = 1,
	fork_chance = 0.1,
	radius = 1
})

mg.register_ore({ -- Same parameters exactly as the previous one so it spawns inside
	name = "default:lava_source",
	wherein = "default:mese",
	seeddiff = 3,
	maxvdistance = 50,
	sizen = 3,
	sizedev = 1,
	maxheight = -1024,
	seglenghtn = 2,
	seglenghtdev = 1,
	segincln = 4,
	segincldev = 1,
	turnangle = 57,
	forkturnangle = 57,
	numbranchesn = 2,
	numbranchesdev = 1,
	fork_chance = 0.1,
	mothersizen = 0,
	mothersizedev = 0
})

mg.register_ore({
	name = "default:stone_with_copper",
	wherein = "default:stone",
	seeddiff = 4,
	maxvdistance = 10.5,
	maxheight = -16,
	seglenghtn = 15,
	seglenghtdev = 6,
	segincln = 0,
	segincldev = 0.6,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 2
})

mg.register_ore({
	name = "default:stone_with_diamond",
	wherein = "default:stone",
	seeddiff = 5,
	maxvdistance = 50,
	sizen = 20,
	sizedev = 5,
	maxheight = -256,
	seglenghtn = 4,
	seglenghtdev = 2,
	segincln = 0.3,
	segincldev = 0.1,
	turnangle = 57,
	forkturnangle = 57,
	numbranchesn = 2,
	numbranchesdev = 1,
	fork_chance = 0.1,
	radius = 1
})

mg.register_ore({
	name = "default:stone_with_gold",
	wherein = "default:stone",
	seeddiff = 17,
	maxvdistance = 10,
	sizen = 30,
	sizedev = 8,
	maxheight = -256,
	seglenghtn = 8,
	seglenghtdev = 4,
	segincln = 0.6,
	segincldev = 0.4,
	turnangle = 57,
	forkturnangle = 57,
	numbranchesn = 2,
	numbranchesdev = 1,
	fork_chance = 0.1,
	radius = 1
})


mg.register_ore({
	name = "default:clay",
	wherein = "default:dirt",
	seeddiff = 6,
	maxvdistance = 10.5,
	maxheight = 0,
	minheight = -50,
	sizen = 50,
	sizedev = 20,
	seglenghtn = 15,
	seglenghtdev = 6,
	segincln = 0,
	segincldev = 0.6,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 1,
	radius = 1.5
})

mg.register_ore({
	name = "default:lava_source",
	seeddiff = 7,
	maxhdistance = 20,
	maxvdistance = 70,
	maxheight = -100,
	seglenghtn = 2,
	seglenghtdev = 1,
	segincln = -5,
	segincldev = 2,
	turnangle = 57,
	forkturnangle = 57,
	numperblock = 1,
	numbranchesn = 2,
	numbranchesdev = 1,
	mothersizen = 5,
	mothersizedev = 3,
	sizen = 8,
	sizedev = 2,
	radius = 2.3
})

if minetest.get_modpath("moreores") ~= nil then
	mg.register_ore({
		name = "moreores:mineral_tin",
		wherein = "default:stone",
		seeddiff = 8,
		maxvdistance = 10.5,
		maxheight = 8,
		seglenghtn = 15,
		seglenghtdev = 6,
		segincln = 0,
		segincldev = 0.6,
		turnangle = 57,
		forkturnangle = 57,
		numperblock = 2
	})
	
	mg.register_ore({
		name = "moreores:mineral_silver",
		wherein = "default:stone",
		seeddiff = 9,
		maxvdistance = 10.5,
		maxheight = -2,
		seglenghtn = 15,
		seglenghtdev = 6,
		sizen = 60,
		sizedev = 30,
		segincln = 0,
		segincldev = 0.6,
		turnangle = 57,
		forkturnangle = 57,
		numperblock = 2
	})
	
	mg.register_ore({
		name = "moreores:mineral_mithril",
		wherein = "default:stone",
		seeddiff = 9,
		maxvdistance = 10.5,
		maxheight = -512,
		seglenghtn = 1,
		seglenghtdev = 2,
		sizen = 5,
		sizedev = 3,
		segincln = 0,
		segincldev = 0.6,
		turnangle = 57,
	})
end

if minetest.get_modpath("technic") ~= nil then
	mg.register_ore({
		name = "technic:mineral_uranium",
		wherein = "default:stone",
		seeddiff = 11,
		maxvdistance = 10.5,
		maxheight = -80,
		minheight = -300,
		sizen = 20,
		sizedev = 10,
		seglenghtn = 3,
		seglenghtdev = 1,
		segincln = 0.4,
		segincldev = 0.6,
		turnangle = 57,
		numperblock = 1,
		fork_chance = 0
	})
	
	mg.register_ore({
		name = "technic:mineral_chromium",
		wherein = "default:stone",
		seeddiff = 12,
		maxvdistance = 10.5,
		maxheight = -100,
		sizen = 50,
		sizedev = 20,
		seglenghtn = 8,
		seglenghtdev = 3,
		segincln = 0,
		segincldev = 0.6,
		turnangle = 57,
		forkturnangle = 57,
		numperblock = 2
	})
	
	mg.register_ore({
		name = "technic:mineral_zinc",
		wherein = "default:stone",
		seeddiff = 13,
		maxvdistance = 10.5,
		maxheight = 2,
		seglenghtn = 15,
		seglenghtdev = 6,
		segincln = 0,
		segincldev = 0.6,
		turnangle = 57,
		forkturnangle = 57,
		numperblock = 2
	})
	
	if technic.config:get_bool("enable_granite_generation") then
		mg.register_ore_sheet({
			name = "technic:granite",
			wherein = "default:stone",
			height_min = -31000,
			height_max = -150,
			tmin = 3,
			tmax = 6,
			threshhold = 0.4,
			noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
		})
	end
	
	if technic.config:get_bool("enable_marble_generation") then
		mg.register_ore_sheet({
			name = "technic:marble",
			wherein = "default:stone",
			height_min = -31000,
			height_max = -50,
			tmin = 3,
			tmax = 6,
			threshhold = 0.4,
			noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=23, octaves=3, persist=0.70}
		})
	end
end
