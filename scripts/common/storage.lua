--- Foodies: storage.lua
--- @author RedJaguar

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3
local mat3Identity = mjm.mat3Identity
local mat3Rotate = mjm.mat3Rotate

local rng = mjrequire "common/randomNumberGenerator"
local typeMaps = mjrequire "common/typeMaps"
local locale = mjrequire "common/locale"
local resource = mjrequire "common/resource"

local mod = {
    loadOrder = 1,
}

function mod:onload(storage)

    local gameObjectTypeIndexMap = typeMaps.types.gameObject

    typeMaps:insert("storage", storage.types, {
        key = "foodBowls",
        name = locale:get("storage_foodBowls"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
        resources = {
            resource.types.unfiredBowlGruel.index,
            resource.types.firedBowlGruel.index,
            resource.types.unfiredBowlBeetrootSoup.index,
            resource.types.firedBowlBeetrootSoup.index,
            resource.types.unfiredBowlPumpkinSoup.index,
            resource.types.firedBowlPumpkinSoup.index,
        },
        storageBox = {
            size =  vec3(0.24, 0.1, 0.24),
            rotationFunction = function(uniqueID, seed)
                local randomValue = rng:valueForUniqueID(uniqueID, seed)
                local rotation = mat3Rotate(mat3Identity, randomValue * 6.282, vec3(0.0,1.0,0.0))
                return rotation
            end,
            dontRotateToFitBelowSurface = true,
            placeObjectOffset = mj:mToP(vec3(0.0,0.4,0.0)),
        },
        maxCarryCount = 1,
        maxCarryCountLimitedAbility = 1,
        --carryRotation = mat3Rotate(mat3Rotate(mat3Identity, math.pi * 0.4, vec3(0.0, 0.0, 1.0)), math.pi * 0.1, vec3(1.0, 0.0, 0.0)),
        carryRotation = mat3Rotate(mat3Identity, 1.2, vec3(0.0, 0.0, 1.0)),
		      carryOffset = vec3(0.1,0.1,0.0),
    })
end

return mod
