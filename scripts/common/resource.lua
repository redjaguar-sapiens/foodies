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
        foodValue = 1,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredBowlGruel,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlGruel",
        name = locale:get("resource_gruel"),
        plural = locale:get("resource_gruel_plural"),
        foodValue = 1,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
    })
end

return mod
