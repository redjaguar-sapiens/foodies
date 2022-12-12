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
end

return mod