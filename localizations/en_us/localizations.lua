--- Foodies: localizations.lua
--- @author RedJaguar

local localizations = {}

localizations.values = {

    --- Snacks

    storage_snacks = "Snacks",
    --- Trail Mix

    object_snackTrailMix = "Trail Mix",
    object_snackTrailMixRotten = "Rotten Trail Mix",
    object_snackTrailMix_plural = "Trail Mix",
    object_snackTrailMixRotten_plural = "Rotten Trail Mix",

    resource_snackTrailMix = "Trail Mix",
    resource_snackTrailMixRotten = "Rotten Trail Mix",
    resource_snackTrailMix_plural = "Trail Mix",
    resource_snackTrailMixRotten_plural = "RottenTrail Mix",

    craftable_snackTrailMix = "Trail Mix",
    craftable_snackTrailMix_plural = "Trail Mix",
    craftable_snackTrailMix_summary = "A handful of seeds and dried fruits to keep you going.",

    --- Biltong / Dried Meat

    object_snackBiltong = "Dried Meat",
    object_snackBiltong_plural = "Dried Meat",

    resource_snackBiltong = "Dried Meat",
    resource_snackBiltong_plural = "Dried Meat",

    craftable_snackBiltong = "Dried Meat",
    craftable_snackBiltong_plural = "Dried Meat",
    craftable_snackBiltong_summary = "Air-dried meat that'll stay edible for a long time.",

    --- Pemmican

    object_pemmican = "Pemmican",
    object_pemmican_plural = "Pemmican",

    resource_pemmican = "Pemmican",
    resource_pemmican_plural = "Pemmican",

    storage_pemmican = "Pemmican",

    craftable_pemmican = "Pemmican",
    craftable_pemmican_plural = "Pemmican",
    craftable_pemmican_summary = "A preserved mixture of dried meat and berries that lasts a long time.",

    --- Food Bowls
    storage_foodBowls = "Food Bowls",

    --- Gruel

    object_gruel = "Gruel",
    object_gruel_plural = "Gruel",

    resource_gruel = "Gruel",
    resource_gruel_plural = "Gruel",

    storage_gruel = "Gruel",

    craftable_gruel = "Gruel",
    craftable_gruel_plural = "Gruel",
    craftable_gruel_summary = "Wheat grains boiled into watery porridge.",

    --- Bone Broth

    object_heartyBoneBroth = "Hearty Bone Broth",
    object_heartyBoneBroth_plural = "Hearty Bone Broths",

    resource_heartyBoneBroth = "Hearty Bone Broth",
    resource_heartyBoneBroth_plural = "Hearty Bone Broth",

    storage_heartyBoneBroth = "Hearty Bone Broth",

    craftable_heartyBoneBroth = "Hearty Bone Broth",
    craftable_heartyBoneBroth_plural = "Hearty Bone Broth",
    craftable_heartyBoneBroth_summary = "A warming broth of bones, beetroot, garlic and ginger. Can be used as virus medicine once researched.",

    --- Beetroot Soup

    object_beetrootSoup = "Beetroot Soup",
    object_beetrootSoup_plural = "Beetroot Soups",

    resource_beetrootSoup = "Beetroot Soup",
    resource_beetrootSoup_plural = "Beetroot Soups",

    storage_beetrootSoup = "Beetroot Soup",

    craftable_beetrootSoup = "Beetroot Soup",
    craftable_beetrootSoup_plural = "Beetroot Soup",
    craftable_beetrootSoup_summary = "Beetroots in water. Yum!",

    --- Pumpkin Soup

    object_pumpkinSoup = "Pumpkin Soup",
    object_pumpkinSoup_plural = "Pumpkin Soups",

    resource_pumpkinSoup = "Pumpkin Soup",
    resource_pumpkinSoup_plural = "Pumpkin Soups",

    storage_pumpkinSoup = "Pumpkin Soup",

    craftable_pumpkinSoup = "Pumpkin Soup",
    craftable_pumpkinSoup_plural = "Pumpkin Soup",
    craftable_pumpkinSoup_summary = "Pumpkins blended into a heart-warming soup",

    --- Meat Stew (Chicken)

    object_meatStewChicken = "Meat Stew (Chicken)",
    object_meatStewChicken_plural = "Meat Stews (Chicken)",

    resource_meatStewChicken = "Meat Stew (Chicken)",
    resource_meatStewChicken_plural = "Meat Stews (Chicken)",

    storage_meatStewChicken = "Meat Stew (Chicken)",

    craftable_meatStewChicken = "Meat Stew (Chicken)",
    craftable_meatStewChicken_plural = "Meat Stews (Chicken)",
    craftable_meatStewChicken_summary = "A meaty chicken stew for growing sapiens.",

    --- Rotten Food Bowls
    
    object_firedBowlFoodBowlRotten = "Rotten Food Bowl",
    object_firedBowlFoodBowlRotten_plural = "Rotten Food Bowls",

    resource_firedBowlFoodBowlRotten = "Rotten Food Bowl",
    resource_firedBowlFoodBowlRotten_plural = "Rotten Food Bowls",

    --- Cooking Pot

    object_unfiredCookingPotWet = "Unfired Cooking Pot (Wet)",
    object_unfiredCookingPotWet_plural = "Cooking Pots (Wet)",

    object_unfiredCookingPotDry = "Unfired Cooking Pot",
    object_unfiredCookingPotDry_plural = "Cooking Pots",

    object_firedCookingPot = "Fired Cooking Pot",
    object_firedCookingPot_plural = "Fired Cooking Pots",

    resource_unfiredCookingPotWet = "Unfired Cooking Pot (Wet)",
    resource_unfiredCookingPotWet_plural = "Unfired Cooking Pots (Wet)",

    resource_unfiredCookingPotDry = "Unfired Cooking Pot",
    resource_unfiredCookingPotDry_plural = "Unfired Cooking Pots",

    resource_firedCookingPot = "Fired Cooking Pot",
    resource_firedCookingPot_plural = "Fired Cooking Pots",

    storage_cookingPot = "Cooking Pots",

    craftable_unfiredCookingPotWet = "Unfired Cooking Pot",
    craftable_unfiredCookingPotWet_plural = "Unfired Cooking Pots",
    craftable_unfiredCookingPotWet_summary = "Used to cook soups and gruels, once fired.",

    craftable_firedCookingPot = "Fired Cooking Pot",
    craftable_firedCookingPot_plural = "Fired Cooking Pots",
    craftable_firedCookingPot_summary = "Used to cook soups and gruels on a campfire.",
    
    tool_cookPot = "Cooking Tool",
    tool_cookPot_plural = "Cooking Tools",
    tool_cookPot_usage = "Cooking",

    --- Sunflower flour

    object_unfiredUrnSunflowerFlour = "Sunflower Flour (Unfired Urn)",
    object_unfiredUrnSunflowerFlour_plural = "Sunflower Flour (Unfired Urn)",
    object_unfiredUrnSunflowerFlourRotten = "Moldy Sunflower Flour (Unfired Urn)",
    object_firedUrnSunflowerFlour = "Sunflower Flour (Fired Urn)",
    object_firedUrnSunflowerFlour_plural = "Sunflower Flour (Fired Urn)",
    object_firedUrnSunflowerFlourRotten = "Moldy Sunflower Flour (Fired Urn)",
    
    resource_unfiredUrnSunflowerFlour = "Sunflower Flour (Unfired Urn)",
    resource_unfiredUrnSunflowerFlour_plural = "Sunflower Flour (Unfired Urn)",
    resource_unfiredUrnSunflowerFlourRotten = "Moldy Sunflower Flour (Unfired Urn)",
    resource_firedUrnSunflowerFlour = "Sunflower Flour (Fired Urn)",
    resource_firedUrnSunflowerFlour_plural = "Sunflower Flour (Fired Urn)",
    resource_firedUrnSunflowerFlourRotten = "Moldy Sunflower Flour (Fired Urn)",

    resource_group_urnSunflowerFlour = "Sunflower Flower",
    resource_group_urnSunflowerFlour_plural = "Sunflower Flower",

    craftable_sunflowerFlour = "Sunflower Flour",
    craftable_sunflowerFlour_plural = "Sunflower Flour",
    craftable_sunflowerFlour_summary = "A keto-friendly flour made by grinding sunflower seeds",

    -- Wheat Flour

    object_unfiredUrnFlour = "Wheat Flour (Unfired Urn)",
    object_unfiredUrnFlour_plural = "Wheat Flour (Unfired Urns)",
    object_unfiredUrnFlourRotten = "Moldy Wheat Flour (Unfired Urn)",
    object_unfiredUrnFlourRotten_plural = "Moldy Wheat Flour (Unfired Urns)",
    object_firedUrnFlour = "Wheat Flour (Fired Urn)",
    object_firedUrnFlour_plural = "Wheat Flour (Fired Urns)",
    object_firedUrnFlourRotten = "Moldy Wheat Flour (Fired Urn)",
    object_firedUrnFlourRotten_plural = "Moldy Wheat Flour (Fired Urns)",

    resource_unfiredUrnFlour = "Wheat Flour (Unfired Urn)",
    resource_unfiredUrnFlour_plural = "Wheat Flour (Unfired Urn)",
    resource_unfiredUrnFlourRotten = "Moldy Wheat Flour (Unfired Urn)",
    resource_unfiredUrnFlourRotten_plural = "Moldy Wheat Flour (Unfired Urn)",
    resource_firedUrnFlour = "Wheat Flour (Fired Urn)",
    resource_firedUrnFlour_plural = "Wheat Flour (Fired Urn)",
    resource_firedUrnFlourRotten = "Moldy Wheat Flour (Fired Urn)",
    resource_firedUrnFlourRotten_plural = "Moldy Wheat Flour (Fired Urn)",

    resource_group_urnFlour = "Flour",
    resource_group_urnFlour_plural = "Flour",

    craftable_flour = "Wheat Flour",
    craftable_flour_plural = "Wheat Flour",

    --- Flaxseed flour

    object_unfiredUrnFlaxseedFlour = "Flaxseed Flour (Unfired Urn)",
    object_unfiredUrnFlaxseedFlour_plural = "Flaxseed Flour (Unfired Urn)",
    object_unfiredUrnFlaxseedFlourRotten = "Moldy Flaxseed Flour (Unfired Urn)",
    object_firedUrnFlaxseedFlour = "Flaxseed Flour (Fired Urn)",
    object_firedUrnFlaxseedFlour_plural = "Flaxseed Flour (Fired Urn)",
    object_firedUrnFlaxseedFlourRotten = "Moldy Flaxseed Flour (Fired Urn)",
    
    resource_unfiredUrnFlaxseedFlour = "Flaxseed Flour (Unfired Urn)",
    resource_unfiredUrnFlaxseedFlour_plural = "Flaxseed Flour (Unfired Urn)",
    resource_unfiredUrnFlaxseedFlourRotten = "Moldy Flaxseed Flour (Unfired Urn)",
    resource_firedUrnFlaxseedFlour = "Flaxseed Flour (Fired Urn)",
    resource_firedUrnFlaxseedFlour_plural = "Flaxseed Flour (Fired Urn)",
    resource_firedUrnFlaxseedFlourRotten = "Moldy Flaxseed Flour (Fired Urn)",

    resource_group_urnFlaxseedFlour = "Flaxseed Flower",
    resource_group_urnFlaxseedFlour_plural = "Flaxseed Flower",


    craftable_flaxseedFlour = "Flaxseed Flour",
    craftable_flaxseedFlour_plural = "Flaxseed Flour",
    craftable_flaxseedFlour_summary = "A keto-friendly flour made by grinding flax seeds",

    -- Sunflower Bread Dough

    object_sunflowerBreadDough = "Sunflower Bread Dough",
    object_sunflowerBreadDough_plural = "Sunflower Bread Dough",
    object_sunflowerBreadDoughRotten = "Moldy Sunflower Bread Dough",
    
    resource_sunflowerBreadDough = "Sunflower Bread Dough",
    resource_sunflowerBreadDough_plural = "Sunflower Bread Dough",
    resource_sunflowerBreadDoughRotten = "Moldy Sunflower Bread Dough",

    -- Wheat Bread Dough

    object_wheatBreadDough = "Wheat Bread Dough",
    object_wheatBreadDough_plural = "Wheat Bread Dough",
    object_wheatBreadDoughRotten = "Moldy Wheat Bread Dough",
    
    resource_wheatBreadDough = "Wheat Bread Dough",
    resource_wheatBreadDough_plural = "Wheat Bread Dough",
    resource_wheatBreadDoughRotten = "Moldy Wheat Bread Dough",

    storage_flatbread = "Bread",

    -- Flaxseed Bread Dough

    object_flaxseedBreadDough = "Flaxseed Bread Dough",
    object_flaxseedBreadDough_plural = "Flaxseed Bread Dough",
    object_flaxseedBreadDoughRotten = "Moldy Flaxseed Bread Dough",
    
    resource_flaxseedBreadDough = "Flaxseed Bread Dough",
    resource_flaxseedBreadDough_plural = "Flaxseed Bread Dough",
    resource_flaxseedBreadDoughRotten = "Moldy Flaxseed Bread Dough",

    -- Sunflower Bread

    object_sunflowerBread = "Sunflower Bread",
    object_sunflowerBread_plural = "Sunflower Breads",
    object_sunflowerBreadRotten = "Moldy Sunflower Bread",
    
    resource_sunflowerBread = "Sunflower Bread",
    resource_sunflowerBread_plural = "Sunflower Breads",
    resource_sunflowerBreadRotten = "Moldy Sunflower Bread",

    -- Flaxseed Bread

    object_flaxseedBread = "Flaxseed Bread",
    object_flaxseedBread_plural = "Flaxseed Breads",
    object_flaxseedBreadRotten = "Moldy Flaxseed Bread",
    
    resource_flaxseedBread = "Flaxseed Bread",
    resource_flaxseedBread_plural = "Flaxseed Breads",
    resource_flaxseedBreadRotten = "Moldy Flaxseed Bread",

    -- Generic Bread


    craftable_bread = "Bread",
    craftable_bread_plural = "Bread",
    craftable_bread_summary = "Bake bread from dough. (5 breads)",

    craftable_breadBulk = "Bread",
    craftable_breadBulk_plural = "Bread",
    craftable_breadBulk_summary = "Bake lots of bread from dough. (10 breads)",
    
    -- Bread Dough - Any
    craftable_breadDough = "Bread Dough",
    craftable_breadDough_pluralBulk = "Bread Dough",
    craftable_breadDough_summary = "Made with flour and water.",

    -- GROUPS

    -- Berries

    resource_group_berryAny = "Berry",
    resource_group_berryAny_plural = "Berries",

    -- Bread Dough

    resource_group_breadDoughAny = "Bread Dough",
    resource_group_breadDoughAny_plural = "Bread Dough",

    -- Butchering - All

    craftable_butcherAnimal = "Butcher Carcass",
    craftable_butcherAnimal_plural = "Butcher Carcasses",
    craftable_butcherAnimal_action = "Butchering a carcass", --0.3.0
    craftable_butcherAnimal_summary = "Butcher an animal carcass. Same outputs as existing recipes.",
    
    resource_group_animalCarcass = "Animal Carcass",
    resource_group_animalCarcass_plural = "Animal Carcasses",
    
}

    

return localizations
