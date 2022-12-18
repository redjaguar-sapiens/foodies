--- Foodies: localizations.lua
--- @author RedJaguar

local localizations = {}

localizations.values = {

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
    craftable_gruel_summary = "Wheat grains turned into porridge",

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
    craftable_meatStewChicken_summary = "A meaty chicken stew for growing sapiens",

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

    resource_group_urnFlour = "Wheat Flour",
    resource_group_urnFlour_plural = "Wheat Flour",

    craftable_flour = "Wheat Flour",
    craftable_flour_plural = "Wheat Flour",

    -- Sunflower Bread Dough

    object_sunflowerBreadDough = "Sunflower Bread Dough",
    object_sunflowerBreadDough_plural = "Sunflower Bread Dough",
    object_sunflowerBreadDoughRotten = "Moldy Sunflower Bread Dough",
    
    resource_sunflowerBreadDough = "Sunflower Bread Dough",
    resource_sunflowerBreadDough_plural = "Sunflower Bread Dough",
    resource_sunflowerBreadDoughRotten = "Moldy Sunflower Bread Dough",

    craftable_sunflowerBreadDough = "Sunflower Bread Dough",
    craftable_sunflowerBreadDough_plural = "Sunflower Bread Dough",
    craftable_sunflowerBreadDough_summary = "Can be baked into sunflower bread",

    -- Wheat Bread Dough

    object_breadDough = "Wheat Bread Dough",
    object_breadDough_plural = "Wheat Bread Dough",
    object_breadDoughRotten = "Moldy Wheat Bread Dough",
    
    resource_breadDough = "Wheat Bread Dough",
    resource_breadDough_plural = "Wheat Bread Dough",
    resource_breadDoughRotten = "Moldy Wheat Bread Dough",

    craftable_breadDough = "Wheat Bread Dough",
    craftable_breadDough_plural = "Wheat Bread Dough",
    craftable_breadDough_summary = "Can be baked into wheat bread",

    storage_flatbread = "Breads",

    -- Sunflower Bread

    object_sunflowerBread = "Sunflower Bread",
    object_sunflowerBread_plural = "Sunflower Breads",
    object_sunflowerBreadRotten = "Moldy Sunflower Bread",
    
    resource_sunflowerBread = "Sunflower Bread",
    resource_sunflowerBread_plural = "Sunflower Breads",
    resource_sunflowerBreadRotten = "Moldy Sunflower Bread",

    craftable_sunflowerBread = "Sunflower Bread",
    craftable_sunflowerBread_plural = "Sunflower Breads",
    craftable_sunflowerBread_summary = "Can be baked into sunflower bread",

}

    

return localizations
