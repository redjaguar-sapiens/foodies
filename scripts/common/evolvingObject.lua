--- Foodies: evolvingObject.lua
--- @author RedJaguar

local gameObject = mjrequire "common/gameObject"

local mod = {
    loadOrder = 1,
}


function mod:onload(evolvingObject)
    
    local super_init = evolvingObject.init
    evolvingObject.init = function(evolvingObject_, dayLength, yearLength)
        super_init(evolvingObject_, dayLength, yearLength)
        
        --- Dried Meat / Biltong
        evolvingObject.evolutions[gameObject.types.snackBiltong.index] = {
            minTime = yearLength * 2.0,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Trail Mix
        evolvingObject.evolutions[gameObject.types.snackTrailMix.index] = {
            minTime = yearLength * 2.0,
            toType = gameObject.types.snackTrailMixRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        } 
        evolvingObject.evolutions[gameObject.types.snackTrailMixRotten.index] = {
            minTime = dayLength * 2.0,
            categoryIndex = evolvingObject.categories.despawn.index,
        }
        --- Pemmican
        evolvingObject.evolutions[gameObject.types.pemmican.index] = {
            minTime = yearLength * 6.0,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Cooking Pot
        evolvingObject.evolutions[gameObject.types.unfiredCookingPotWet.index] = {
            minTime = 240.0,
            toType = gameObject.types.unfiredCookingPotDry.index,
            categoryIndex = evolvingObject.categories.dry.index,
        }
        
        --- Gruel
        evolvingObject.evolutions[gameObject.types.firedBowlGruel.index] = {
            minTime = dayLength * 3.0,
            toType = gameObject.types.firedBowlFoodBowlRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }

        --- Hearty Bone Broth
        evolvingObject.evolutions[gameObject.types.firedBowlHeartyBoneBroth.index] = {
            minTime = dayLength * 4.0,
            toType = gameObject.types.firedBowlFoodBowlRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }

        --- Beetroot Soup
        evolvingObject.evolutions[gameObject.types.firedBowlBeetrootSoup.index] = {
            minTime = dayLength * 3.0,
            toType = gameObject.types.firedBowlFoodBowlRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }

        --- Pumpkin Soup
        evolvingObject.evolutions[gameObject.types.firedBowlPumpkinSoup.index] = {
            minTime = dayLength * 3.0,
            toType = gameObject.types.firedBowlFoodBowlRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }

        --- Meat Stew (Chicken)
        evolvingObject.evolutions[gameObject.types.firedBowlMeatStewChicken.index] = {
            minTime = dayLength * 3.0,
            toType = gameObject.types.firedBowlFoodBowlRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }

        --- Rotten Food Bowls
        evolvingObject.evolutions[gameObject.types.firedBowlFoodBowlRotten.index] = {
            minTime = dayLength,
            toType = gameObject.types.firedBowl.index,
            categoryIndex = evolvingObject.categories.despawn.index,
        }
        
        --- Sunflower Flour
        evolvingObject.evolutions[gameObject.types.unfiredUrnSunflowerFlour.index] = {
            minTime = dayLength * 4.0,
            toType = gameObject.types.unfiredUrnSunflowerFlourRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.unfiredUrnSunflowerFlourRotten.index] = {
            minTime = dayLength,
            toType = gameObject.types.unfiredUrnDry.index,
            categoryIndex = evolvingObject.categories.despawn.index,
        }
        evolvingObject.evolutions[gameObject.types.firedUrnSunflowerFlour.index] = {
            minTime = yearLength * 2.0,
            toType = gameObject.types.firedUrnSunflowerFlourRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.firedUrnSunflowerFlourRotten.index] = {
            minTime = dayLength,
            toType = gameObject.types.firedUrn.index,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Sunflower Bread Dough
        evolvingObject.evolutions[gameObject.types.sunflowerBreadDough.index] = {
            minTime = dayLength * 4.0,
            toType = gameObject.types.sunflowerBreadDoughRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.sunflowerBreadDoughRotten.index] = {
            minTime = dayLength,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Sunflower Bread
        evolvingObject.evolutions[gameObject.types.sunflowerBread.index] = {
            minTime = yearLength * 0.5,
            toType = gameObject.types.breadDoughRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.sunflowerBreadRotten.index] = {
            minTime = dayLength,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Flaxseed Flour
        evolvingObject.evolutions[gameObject.types.unfiredUrnFlaxseedFlour.index] = {
            minTime = dayLength * 4.0,
            toType = gameObject.types.unfiredUrnFlaxseedFlourRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.unfiredUrnFlaxseedFlourRotten.index] = {
            minTime = dayLength,
            toType = gameObject.types.unfiredUrnDry.index,
            categoryIndex = evolvingObject.categories.despawn.index,
        }
        evolvingObject.evolutions[gameObject.types.firedUrnFlaxseedFlour.index] = {
            minTime = yearLength * 2.0,
            toType = gameObject.types.firedUrnFlaxseedFlourRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.firedUrnFlaxseedFlourRotten.index] = {
            minTime = dayLength,
            toType = gameObject.types.firedUrn.index,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Flaxseed Bread Dough
        evolvingObject.evolutions[gameObject.types.flaxseedBreadDough.index] = {
            minTime = dayLength * 4.0,
            toType = gameObject.types.breadDoughRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.flaxseedBreadDoughRotten.index] = {
            minTime = dayLength,
            categoryIndex = evolvingObject.categories.despawn.index,
        }

        --- Flaxseed Bread
        evolvingObject.evolutions[gameObject.types.flaxseedBread.index] = {
            minTime = yearLength * 0.5,
            toType = gameObject.types.flaxseedBreadRotten.index,
            categoryIndex = evolvingObject.categories.rot.index,
        }
        evolvingObject.evolutions[gameObject.types.flaxseedBreadRotten.index] = {
            minTime = dayLength,
            categoryIndex = evolvingObject.categories.despawn.index,
        }
    end
end

return mod