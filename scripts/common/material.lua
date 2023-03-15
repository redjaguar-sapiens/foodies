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
	mj:insertIndexed(material.types, mat("gruel", vec3(0.35, 0.27, 0.17) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("gruelBits", vec3(0.28, 0.17, 0.1) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("beetrootSoup", vec3(0.54, 0.24, 0.24) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("beetrootSoupBits", vec3(0.65, 0.12, 0.12) * 1.1, 1.0))

	mj:insertIndexed(material.types, mat("pumpkinSoup", vec3(0.48, 0.2, 0.05) * 1.1, 1.0))
	mj:insertIndexed(material.types, mat("pumpkinSoupBits", vec3(0.70,0.28,0.05) * 1.1, 1.0))
	
	mj:insertIndexed(material.types, mat("meatStew", vec3(0.67,0.50,0.30), 1.0))
	mj:insertIndexed(material.types, mat("meatStewBits", vec3(0.53,0.40,0.17), 1.0))

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