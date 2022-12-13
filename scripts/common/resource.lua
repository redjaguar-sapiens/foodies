--- Foodies: resource.lua
--- @author RedJaguar

local typeMaps = mjrequire "common/typeMaps"
local locale = mjrequire "common/locale"

local mod = {
    loadOrder = 1,
}

function mod:onload(resource)

    local gameObjectTypeIndexMap = typeMaps.types.gameObject

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlGruel",
        name = locale:get("resource_gruel"),
        plural = locale:get("resource_gruel_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlBeetrootSoup",
        name = locale:get("resource_beetrootSoup"),
        plural = locale:get("resource_beetrootSoup_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlBeetrootSoup,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlPumpkinSoup",
        name = locale:get("resource_pumpkinSoup"),
        plural = locale:get("resource_pumpkinSoup_plural"),
        foodValue = 0.8,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlPumpkinSoup,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlFoodBowlRotten",
        name = locale:get("resource_firedBowlFoodBowlRotten"),
        plural = locale:get("resource_firedBowlFoodBowlRotten_plural"),
        disallowsDecorationPlacing = true,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlFoodBowlRotten,
    })

    --- Cooking Pot
    typeMaps:insert("resource", resource.types, {
        key = "unfiredCookingPotWet",
        name = locale:get("resource_unfiredCookingPotWet"),
        plural = locale:get("resource_unfiredCookingPotWet_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredCookingPotWet,
    })

    typeMaps:insert("resource", resource.types, {
        key = "unfiredCookingPotDry",
        name = locale:get("resource_unfiredCookingPotDry"),
        plural = locale:get("resource_unfiredCookingPotDry_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredCookingPotDry,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedCookingPot",
        name = locale:get("resource_firedCookingPot"),
        plural = locale:get("resource_firedCookingPot_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedCookingPot,
    })
end

return mod
