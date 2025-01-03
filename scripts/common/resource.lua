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
        key = "snackTrailMix",
        name = locale:get("resource_snackTrailMix"),
        plural = locale:get("resource_snackTrailMix_plural"),
        foodValue = 0.4,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxSeed,
        tradeBatchSize = 20,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "snackTrailMixRotten",
        name = locale:get("resource_snackTrailMixRotten"),
        plural = locale:get("resource_snackTrailMixRotten_plural"),
        compostValue = 2,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxSeed,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 20,
        tradeValue = 1,
    })

    typeMaps:insert("resource", resource.types, {
        key = "snackBiltong",
        name = locale:get("resource_snackBiltong"),
        plural = locale:get("resource_snackBiltong_plural"),
        foodValue = 0.5,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.snackBiltong,
        tradeBatchSize = 25,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "pemmican",
        name = locale:get("resource_pemmican"),
        plural = locale:get("resource_pemmican_plural"),
        foodValue = 1.0,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.pemmican,
        tradeBatchSize = 25,
        tradeValue = 5,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlGruel",
        name = locale:get("resource_gruel"),
        plural = locale:get("resource_gruel_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlGruel,
        tradeBatchSize = 10,
        tradeValue = 5,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlHeartyBoneBroth",
        name = locale:get("resource_heartyBoneBroth"),
        plural = locale:get("resource_heartyBoneBroth_plural"),
        foodValue = 0.8,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlHeartyBoneBroth,
        tradeBatchSize = 10,
        tradeValue = 10,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlBeetrootSoup",
        name = locale:get("resource_beetrootSoup"),
        plural = locale:get("resource_beetrootSoup_plural"),
        foodValue = 0.7,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlBeetrootSoup,
        tradeBatchSize = 10,
        tradeValue = 10,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlPumpkinSoup",
        name = locale:get("resource_pumpkinSoup"),
        plural = locale:get("resource_pumpkinSoup_plural"),
        foodValue = 0.8,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlPumpkinSoup,
        tradeBatchSize = 10,
        tradeValue = 10,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlMeatStewChicken",
        name = locale:get("resource_meatStewChicken"),
        plural = locale:get("resource_meatStewChicken_plural"),
        foodValue = 1.0,
        foodPortionCount = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlMeatStewChicken,
        tradeBatchSize = 10,
        tradeValue = 10,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedBowlFoodBowlRotten",
        name = locale:get("resource_firedBowlFoodBowlRotten"),
        plural = locale:get("resource_firedBowlFoodBowlRotten_plural"),
        disallowsDecorationPlacing = true,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlFoodBowlRotten,
        tradeBatchSize = 20,
        tradeValue = 3,
    })

    --- Cooking Pot
    typeMaps:insert("resource", resource.types, {
        key = "unfiredCookingPotWet",
        name = locale:get("resource_unfiredCookingPotWet"),
        plural = locale:get("resource_unfiredCookingPotWet_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredCookingPotWet,
        impactCausesInjury = true,
        tradeBatchSize = 10,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "unfiredCookingPotDry",
        name = locale:get("resource_unfiredCookingPotDry"),
        plural = locale:get("resource_unfiredCookingPotDry_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredCookingPotDry,
        impactCausesInjury = true,
        tradeBatchSize = 10,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedCookingPot",
        name = locale:get("resource_firedCookingPot"),
        plural = locale:get("resource_firedCookingPot_plural"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedCookingPot,
        impactCausesInjury = true,
        tradeBatchSize = 10,
        tradeValue = 5,
    })

    -- Wheat Bread

    typeMaps:insert("resource", resource.types, {
        key = "breadDough",
        name = locale:get("resource_wheatBreadDough"),
        plural = locale:get("resource_wheatBreadDough"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.breadDough,
        tradeBatchSize = 10,
        tradeValue = 5,
    })

    typeMaps:insert("resource", resource.types, {
        key = "breadDoughRotten",
        name = locale:get("resource_wheatBreadDoughRotten"),
        plural = locale:get("resource_wheatBreadDoughRotten"),
        compostValue = 2,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.breadDoughRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 1,
    })

     --- Sunflower Flour

    typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnSunflowerFlour",
        name = locale:get("resource_unfiredUrnSunflowerFlour"),
        plural = locale:get("resource_unfiredUrnSunflowerFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnSunflowerFlour,
        tradeBatchSize = 10,
        tradeValue = 7,
    })

    
     typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnSunflowerFlourRotten",
        name = locale:get("resource_unfiredUrnSunflowerFlourRotten"),
        plural = locale:get("resource_unfiredUrnSunflowerFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnSunflowerFlourRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 3,
    })

     typeMaps:insert("resource", resource.types, {
        key = "firedUrnSunflowerFlour",
        name = locale:get("resource_firedUrnSunflowerFlour"),
        plural = locale:get("resource_firedUrnSunflowerFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnSunflowerFlour,
        tradeBatchSize = 10,
        tradeValue = 9,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedUrnSunflowerFlourRotten",
        name = locale:get("resource_firedUrnSunflowerFlourRotten"),
        plural = locale:get("resource_firedUrnSunflowerFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnSunflowerFlourRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 5,
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
        tradeBatchSize = 10,
        tradeValue = 5,
    })

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBreadDoughRotten",
        name = locale:get("resource_sunflowerBreadDoughRotten"),
        plural = locale:get("resource_sunflowerBreadDoughRotten"),
        compostValue = 2,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBreadDoughRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 1,
    })

    -- Sunflower Bread

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBread",
        name = locale:get("resource_sunflowerBread"),
        plural = locale:get("resource_sunflowerBread_plural"),
        foodValue = 0.6,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBread,
        tradeBatchSize = 25,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "sunflowerBreadRotten",
        name = locale:get("resource_sunflowerBreadRotten"),
        plural = locale:get("resource_sunflowerBreadRotten"),
        compostValue = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.sunflowerBreadRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 25,
        tradeValue = 1,
    })

    --- Flaxseed Flour

    typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnFlaxseedFlour",
        name = locale:get("resource_unfiredUrnFlaxseedFlour"),
        plural = locale:get("resource_unfiredUrnFlaxseedFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnFlaxseedFlour,
        tradeBatchSize = 10,
        tradeValue = 7,
    })

    
     typeMaps:insert("resource", resource.types, {
        key = "unfiredUrnFlaxseedFlourRotten",
        name = locale:get("resource_unfiredUrnFlaxseedFlourRotten"),
        plural = locale:get("resource_unfiredUrnFlaxseedFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.unfiredUrnFlaxseedFlourRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 3,
    })

     typeMaps:insert("resource", resource.types, {
        key = "firedUrnFlaxseedFlour",
        name = locale:get("resource_firedUrnFlaxseedFlour"),
        plural = locale:get("resource_firedUrnFlaxseedFlour"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlaxseedFlour,
        tradeBatchSize = 10,
        tradeValue = 9,
    })

    typeMaps:insert("resource", resource.types, {
        key = "firedUrnFlaxseedFlourRotten",
        name = locale:get("resource_firedUrnFlaxseedFlourRotten"),
        plural = locale:get("resource_firedUrnFlaxseedFlourRotten"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlaxseedFlourRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 5,
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
        tradeBatchSize = 10,
        tradeValue = 5,
    })

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBreadDoughRotten",
        name = locale:get("resource_flaxseedBreadDoughRotten"),
        plural = locale:get("resource_flaxseedBreadDoughRotten"),
        compostValue = 2,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBreadDoughRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 10,
        tradeValue = 1,
    })

    -- Flaxseed Bread

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBread",
        name = locale:get("resource_flaxseedBread"),
        plural = locale:get("resource_flaxseedBread_plural"),
        foodValue = 0.6,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBread,
        tradeBatchSize = 25,
        tradeValue = 3,
    })

    typeMaps:insert("resource", resource.types, {
        key = "flaxseedBreadRotten",
        name = locale:get("resource_flaxseedBreadRotten"),
        plural = locale:get("resource_flaxseedBreadRotten"),
        compostValue = 1,
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.flaxseedBreadRotten,
        disallowsDecorationPlacing = true,
        tradeBatchSize = 25,
        tradeValue = 1,
    })

    -- Groups

    typeMaps:insert("resourceGroup", resource.groups, {
        key = "berryAny",
        name = locale:get("resource_group_berryAny"),
        plural = locale:get("resource_group_berryAny_plural"),
        resourceTypes = {
            resource.types.raspberry.index,
            resource.types.gooseberry.index,
            resource.types.elderberry.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.raspberry,
    })

    typeMaps:insert("resourceGroup", resource.groups, {
        key = "urnFlour",
        name = locale:get("resource_group_urnFlour"),
        plural = locale:get("resource_group_urnFlour_plural"),
        resourceTypes = {
            resource.types.unfiredUrnFlour.index,
            resource.types.firedUrnFlour.index,
            resource.types.unfiredUrnSunflowerFlour.index,
            resource.types.firedUrnSunflowerFlour.index,
            resource.types.unfiredUrnFlaxseedFlour.index,
            resource.types.firedUrnFlaxseedFlour.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedUrnFlour,
    })

    typeMaps:insert("resourceGroup", resource.groups, {
        key = "breadDoughAny",
        name = locale:get("resource_group_breadDoughAny"),
        plural = locale:get("resource_group_breadDoughAny_plural"),
        resourceTypes = {
            resource.types.breadDough.index,
            resource.types.flaxseedBreadDough.index,
            resource.types.sunflowerBreadDough.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.breadDough,
    })

    typeMaps:insert("resourceGroup", resource.groups, {
        key = "animalCarcass",
        name = locale:get("resource_group_animalCarcass"),
        plural = locale:get("resource_group_animalCarcass_plural"),
        resourceTypes = {
            resource.types.deadAlpaca.index,
            resource.types.deadChicken.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.deadAlpaca,
    })

    typeMaps:insert("resourceGroup", resource.groups, {
        key = "virusMedicine",
        name = locale:get("resource_group_virusMedicine"),
        plural = locale:get("resource_group_virusMedicine_plural"),
        resourceTypes = {
            resource.types.unfiredBowlVirusMedicine.index,
            resource.types.firedBowlVirusMedicine.index,
            resource.types.firedBowlHeartyBoneBroth.index,
        },
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedBowlVirusMedicine,
    })

end

return mod
