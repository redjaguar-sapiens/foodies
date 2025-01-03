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
        key = "snacks",
        name = locale:get("storage_snacks"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.snackTrailMix,
        resources = {
            resource.types.snackTrailMix.index,
            resource.types.snackTrailMixRotten.index,
            resource.types.snackBiltong.index,
        },
        storageBox = {
            size =  vec3(0.08, 0.08, 0.08),
            rotationFunction = function(uniqueID, seed)
                local randomValue = rng:valueForUniqueID(uniqueID, seed)
                local rotation = mat3Rotate(mat3Identity, randomValue * 6.282, vec3(0.0,1.0,0.0))
                rotation = mat3Rotate(rotation, randomValue * 6.282, vec3(1.0,0.0,0.0))
                return rotation
            end,
        },
        maxCarryCount = 4,
        maxCarryCountLimitedAbility = 2,
        maxCarryCountForRunning = 2,
		carryType = storage.carryTypes.small,
		carryOffset = vec3(0.0,0.01,0.0),
		windBlowAwayHighChance = true,
    })
    typeMaps:insert("storage", storage.types, {
        key = "pemmican",
        name = locale:get("storage_pemmican"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.pemmican,
        resources = {
            resource.types.pemmican.index,
        },
        storageBox = {
            size =  vec3(0.12, 0.12, 0.12),
            rotationFunction = function(uniqueID, seed)
                local randomValue = rng:valueForUniqueID(uniqueID, seed)
                local rotation = mat3Rotate(mat3Identity, randomValue * 6.282, vec3(0.0,1.0,0.0))
                rotation = mat3Rotate(rotation, randomValue * 6.282, vec3(1.0,0.0,0.0))
                return rotation
            end,
        },
        maxCarryCount = 4,
        maxCarryCountLimitedAbility = 2,
        maxCarryCountForRunning = 2,
		carryType = storage.carryTypes.small,
		carryOffset = vec3(0.0,0.01,0.0),
		windBlowAwayHighChance = true,
    })

    typeMaps:insert("storage", storage.types, {
        key = "foodBowls",
        name = locale:get("storage_foodBowls"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
        resources = {
            resource.types.firedBowlGruel.index,
            resource.types.firedBowlHeartyBoneBroth.index,
            resource.types.firedBowlBeetrootSoup.index,
            resource.types.firedBowlPumpkinSoup.index,
            resource.types.firedBowlFoodBowlRotten.index,
            resource.types.firedBowlMeatStewChicken.index,
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
          
    typeMaps:insert("storage", storage.types,   {
        key = "cookingPots",
        name = locale:get("storage_cookingPot"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedCookingPot,
        resources = {
            resource.types.unfiredCookingPotWet.index,
            resource.types.unfiredCookingPotDry.index,

            resource.types.firedCookingPot.index,
            
        },
        storageBox = {
            size =  vec3(0.5, 0.4 , 0.5),
            --offset =  vec3(0.0, 0.0, 0.0),
            rotationFunction = function(uniqueID, seed)
                local randomValue = rng:valueForUniqueID(uniqueID, seed)
                local rotation = mat3Rotate(mat3Identity, randomValue * 6.282, vec3(0.0,1.0,0.0))
                return rotation
            end,
            placeObjectOffset = mj:mToP(vec3(0.0,0.2,0.0)),
        },
        
        maxCarryCountLimitedAbility = 1,
        maxCarryCountForRunning = 0,
        carryOffset = vec3(-0.02,0.1,0.07),
        carryRotation = mat3Rotate(mat3Identity, 1.2, vec3(0.0, 0.0, 1.0)),
    })
    
    typeMaps:insert("storage", storage.types,   {

        key = "urn",
        name = locale:get("storage_urn"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrn,
        resources = {
            resource.types.unfiredUrnWet.index,
            resource.types.unfiredUrnDry.index,
            resource.types.unfiredUrnHulledWheat.index,
            resource.types.unfiredUrnHulledWheatRotten.index,
            resource.types.unfiredUrnFlour.index,
            resource.types.unfiredUrnFlourRotten.index,

            resource.types.unfiredUrnSunflowerFlour.index,
            resource.types.unfiredUrnSunflowerFlourRotten.index,
            
            resource.types.unfiredUrnFlaxseedFlour.index,
            resource.types.unfiredUrnFlaxseedFlourRotten.index,
            
            resource.types.firedUrn.index,
            resource.types.firedUrnHulledWheat.index,
            resource.types.firedUrnHulledWheatRotten.index,
            resource.types.firedUrnFlour.index,
            resource.types.firedUrnFlourRotten.index,

            resource.types.firedUrnSunflowerFlour.index,
            resource.types.firedUrnSunflowerFlourRotten.index,

            resource.types.firedUrnFlaxseedFlour.index,
            resource.types.firedUrnFlaxseedFlourRotten.index,
            
        },
        storageBox = {
            size =  vec3(0.3, 0.86, 0.3),
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
		carryOffset = vec3(0.35,-0.01,-0.01),
		--carryOffset = vec3(0.18,-0.1,0.1),
        carryRotation = mat3Rotate(mat3Rotate(mat3Identity, math.pi * 0.4, vec3(0.0, 0.0, 1.0)), math.pi * 0.1, vec3(1.0, 0.0, 0.0)),
        maxCarryCountForRunning = 0,
    })

    typeMaps:insert("storage", storage.types,   {

        key = "breadDough",
        name = locale:get("storage_breadDough"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.breadDough,
        resources = {
            resource.types.breadDough.index,
            resource.types.breadDoughRotten.index,

            resource.types.sunflowerBreadDough.index,
            resource.types.sunflowerBreadDoughRotten.index,

            resource.types.flaxseedBreadDough.index,
            resource.types.flaxseedBreadDoughRotten.index,
        },
		storageBox = {
			size =  vec3(0.3, 0.3, 0.3),
			rotationFunction = function(uniqueID, seed)
				local randomValue = rng:valueForUniqueID(uniqueID, seed)
				local rotation = mat3Rotate(mat3Identity, randomValue * 0.2 - 0.1, vec3(0.0,1.0,0.0))
				return rotation
			end,
		},
		carryOffset = vec3(-0.02,0.1,0.07),
        maxCarryCountLimitedAbility = 1,
        maxCarryCountForRunning = 0,
    })

    typeMaps:insert("storage", storage.types,   {
        
        key = "flatbread",
        name = locale:get("storage_flatbread"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flatbread,
        resources = {
            resource.types.flatbread.index,
            resource.types.flatbreadRotten.index,

            resource.types.sunflowerBread.index,
            resource.types.sunflowerBreadRotten.index,

            resource.types.flaxseedBread.index,
            resource.types.flaxseedBreadRotten.index,
        },
        storageBox = {
            size =  vec3(0.25, 0.1, 0.25),
            rotationFunction = function(uniqueID, seed)
                local randomValue = rng:valueForUniqueID(uniqueID, seed)
                local rotation = mat3Rotate(mat3Identity, randomValue * 0.6, vec3(1.0,0.0,0.0))
                rotation = mat3Rotate(rotation, randomValue * 6.282, vec3(0.0,1.0,0.0))
                return rotation
            end,
        },
        maxCarryCount = 4,
        maxCarryCountLimitedAbility = 2,
        maxCarryCountForRunning = 1,
        carryRotation = mat3Rotate(mat3Rotate(mat3Identity, 1.0, vec3(0.0, 0.0, 1.0)), -0.5, vec3(0.0, 1.0, 0.0)),
        carryStackType = storage.stackTypes.vertical,
		carryOffset = vec3(0.08,0.08,0.02),
    })
    

end

return mod
