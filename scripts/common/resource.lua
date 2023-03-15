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
        key = "firedBowlMeatStewChicken",
        name = locale:get("resource_meatStewChicken"),
        plural = locale:get("resource_meatStewChicken_plural"),
        foodValue = 1.0,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlMeatStewChicken,
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

     --- Sunflower Flour

    typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnSunflowerFlour",
        name = locale:get("resource_unfiredUrnSunflowerFlour"),
        plural = locale:get("resource_unfiredUrnSunflowerFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnSunflowerFlour,
    })

    
     typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnSunflowerFlourRotten",
        name = locale:get("resource_unfiredUrnSunflowerFlourRotten"),
        plural = locale:get("resource_unfiredUrnSunflowerFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnSunflowerFlourRotten,
        disallowsDecorationPlacing = true,
    })

     typeMaps:insert("resource", resource.types, {
        key = "firedUrnSunflowerFlour",
        name = locale:get("resource_firedUrnSunflowerFlour"),
        plural = locale:get("resource_firedUrnSunflowerFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnSunflowerFlour,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedUrnSunflowerFlourRotten",
        name = locale:get("resource_firedUrnSunflowerFlourRotten"),
        plural = locale:get("resource_firedUrnSunflowerFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnSunflowerFlourRotten,
        disallowsDecorationPlacing = true,
    })

    -- Sunflower Flour resource group
    typeMaps:insert("resourceGroup", resource.groups, {
        key = "urnSunflowerFlour",
        name = locale:get("resource_group_urnSunflowerFlour"),
        plural = locale:get("resource_group_urnSunflowerFlour_plural"),
        resourceTypes = {
            resource.types.unfiredUrnSunflowerFlour.index,
            resource.types.firedUrnSunflowerFlour.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnSunflowerFlour,
    })

    -- Sunflower Bread Dough

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBreadDough",
        name = locale:get("resource_sunflowerBreadDough"),
        plural = locale:get("resource_sunflowerBreadDough"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBreadDough,
    })

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBreadDoughRotten",
        name = locale:get("resource_sunflowerBreadDoughRotten"),
        plural = locale:get("resource_sunflowerBreadDoughRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBreadDoughRotten,
        disallowsDecorationPlacing = true,
    })

    -- Sunflower Bread

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBread",
        name = locale:get("resource_sunflowerBread"),
        plural = locale:get("resource_sunflowerBread_plural"),
        foodValue = 0.5,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBread,
    })

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBreadRotten",
        name = locale:get("resource_sunflowerBreadRotten"),
        plural = locale:get("resource_sunflowerBreadRotten"),
        foodValue = 0.5,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBreadRotten,
        disallowsDecorationPlacing = true,
    })

    --- Flaxseed Flour

    typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnFlaxseedFlour",
        name = locale:get("resource_unfiredUrnFlaxseedFlour"),
        plural = locale:get("resource_unfiredUrnFlaxseedFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnFlaxseedFlour,
    })

    
     typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnFlaxseedFlourRotten",
        name = locale:get("resource_unfiredUrnFlaxseedFlourRotten"),
        plural = locale:get("resource_unfiredUrnFlaxseedFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnFlaxseedFlourRotten,
        disallowsDecorationPlacing = true,
    })

     typeMaps:insert("resource", resource.types, {
        key = "firedUrnFlaxseedFlour",
        name = locale:get("resource_firedUrnFlaxseedFlour"),
        plural = locale:get("resource_firedUrnFlaxseedFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlaxseedFlour,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedUrnFlaxseedFlourRotten",
        name = locale:get("resource_firedUrnFlaxseedFlourRotten"),
        plural = locale:get("resource_firedUrnFlaxseedFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlaxseedFlourRotten,
        disallowsDecorationPlacing = true,
    })

    -- Flaxseed Flour resource group
    typeMaps:insert("resourceGroup", resource.groups, {
        key = "urnFlaxseedFlour",
        name = locale:get("resource_group_urnFlaxseedFlour"),
        plural = locale:get("resource_group_urnFlaxseedFlour_plural"),
        resourceTypes = {
            resource.types.unfiredUrnFlaxseedFlour.index,
            resource.types.firedUrnFlaxseedFlour.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlaxseedFlour,
    })

    -- Flaxseed Bread Dough

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBreadDough",
        name = locale:get("resource_flaxseedBreadDough"),
        plural = locale:get("resource_flaxseedBreadDough"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBreadDough,
    })

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBreadDoughRotten",
        name = locale:get("resource_flaxseedBreadDoughRotten"),
        plural = locale:get("resource_flaxseedBreadDoughRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBreadDoughRotten,
        disallowsDecorationPlacing = true,
    })

    -- Flaxseed Bread

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBread",
        name = locale:get("resource_flaxseedBread"),
        plural = locale:get("resource_flaxseedBread_plural"),
        foodValue = 0.4,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBread,
    })

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBreadRotten",
        name = locale:get("resource_flaxseedBreadRotten"),
        plural = locale:get("resource_flaxseedBreadRotten"),
        foodValue = 0.2,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBreadRotten,
        disallowsDecorationPlacing = true,
    })

end

return mod
