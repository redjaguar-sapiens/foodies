--- Foodies: material.lua
--- @author RedJaguar

local mod = {
	loadOrder = 1
}

-- Math
local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

local function mat(key, color, roughness, metal)
	return {key = key, color = color, roughness = roughness, metal = metal or 0.0}
end

function mod:onload(material)
	
	mj:insertIndexed(material.types, mat("snackTrailMix", vec3(0.64, 0.46, 0.37) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("snackTrailMixRotten", vec3(0.64, 0.46, 0.37) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("snackBiltong", vec3(0.15, 0.08, 0.02) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("pemmican", vec3(0.15, 0.08, 0.02) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("gruel", vec3(0.35, 0.27, 0.17) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("gruelBits", vec3(0.28, 0.17, 0.1) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("heartyBoneBroth", vec3(0.64, 0.48, 0.35) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("heartyBoneBrothBits", vec3(0.39, 0.24, 0.22) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("beetrootSoup", vec3(0.57, 0.27, 0.27) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("beetrootSoupBits", vec3(0.6, 0.13, 0.13) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("pumpkinSoup", vec3(0.48, 0.2, 0.05) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("pumpkinSoupBits", vec3(0.70,0.28,0.05) * 1.1, 1.0))
	
	mj:insertIndexed(material.types, mat("meatStew", vec3(0.70, 0.53, 0.24), 1.0))
	mj:insertIndexed(material.types, mat("meatStewBits", vec3(0.95, 0.91, 0.84), 1.0))

	mj:insertIndexed(material.types, mat("sunflowerFlour", vec3(0.71, 0.68, 0.50), 1.0))
	mj:insertIndexed(material.types, mat("sunflowerFlourRotten", vec3(0.52, 0.49, 0.29), 1.0))

	mj:insertIndexed(material.types, mat("sunflowerBreadDough", vec3(0.922,0.796,0.533), 1.0))
	mj:insertIndexed(material.types, mat("sunflowerBreadDoughRotten", vec3(0.922,0.796,0.533), 1.0))

	mj:insertIndexed(material.types, mat("sunflowerBread", vec3(0.69,0.60,0.42) * 1.0, 1.0))
	mj:insertIndexed(material.types, mat("sunflowerBreadRotten", vec3(0.36,0.29,0.15), 1.0))

	mj:insertIndexed(material.types, mat("flaxseedFlour", vec3(0.85,0.71,0.43), 1.0))
	mj:insertIndexed(material.types, mat("flaxseedFlourRotten", vec3(0.36,0.29,0.15), 1.0))

	mj:insertIndexed(material.types, mat("flaxseedBreadDough", vec3(0.85,0.71,0.43), 1.0))
	mj:insertIndexed(material.types, mat("flaxseedBreadDoughRotten", vec3(0.85,0.71,0.43), 1.0))

	mj:insertIndexed(material.types, mat("flaxseedBread", vec3(0.85,0.71,0.43) * 1.0, 1.0))
	mj:insertIndexed(material.types, mat("flaxseedBreadRotten", vec3(0.85,0.71,0.43), 1.0))
end

return mod