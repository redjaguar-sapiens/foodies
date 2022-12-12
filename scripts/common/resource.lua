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
        key = "unfiredBowlGruel",
        name = locale:get("resource_gruel"),
        plural = locale:get("resource_gruel_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredBowlGruel,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlGruel",
        name = locale:get("resource_gruel"),
        plural = locale:get("resource_gruel_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
    })

    typeMaps:insert("resource", resource.types, {
        key = "unfiredBowlBeetrootSoup",
        name = locale:get("resource_beetrootSoup"),
        plural = locale:get("resource_beetrootSoup_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredBowlBeetrootSoup,
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
        key = "unfiredBowlPumpkinSoup",
        name = locale:get("resource_pumpkinSoup"),
        plural = locale:get("resource_pumpkinSoup_plural"),
        foodValue = 0.8,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredBowlPumpkinSoup,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlPumpkinSoup",
        name = locale:get("resource_pumpkinSoup"),
        plural = locale:get("resource_pumpkinSoup_plural"),
        foodValue = 0.8,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlPumpkinSoup,
    })
end

return mod
