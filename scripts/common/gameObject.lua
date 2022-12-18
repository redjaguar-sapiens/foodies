--- Foodies: gameObject.lua
--- @author RedJaguar

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3
local vec2 = mjm.vec2
local normalize = mjm.normalize
local vec3xMat3 = mjm.vec3xMat3
local mat3Identity = mjm.mat3Identity
local mat3Rotate = mjm.mat3Rotate
local mat3Inverse = mjm.mat3Inverse

local harvestable = mjrequire "common/harvestable"
local resource = mjrequire "common/resource"
local locale = mjrequire "common/locale"

local mod = {
    loadOrder = 1,
}

function mod:onload(gameObject)

	gameObject:addGameObjectsFromTable({

    -- Gruel
    firedBowlGruel = {

      name = locale:get("object_gruel"),
      plural = locale:get("object_gruel_plural"),
      modelName = "gruelBowlFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedBowlGruel.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.firedBowl,
      },
    },

    -- Beetroot Soup
    firedBowlBeetrootSoup = {

      name = locale:get("object_beetrootSoup"),
      plural = locale:get("object_beetrootSoup_plural"),
      modelName = "beetrootSoupBowlFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedBowlBeetrootSoup.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.firedBowl,
      },
    },

    -- Pumpkin Soup
    firedBowlPumpkinSoup = {

      name = locale:get("object_pumpkinSoup"),
      plural = locale:get("object_pumpkinSoup_plural"),
      modelName = "pumpkinSoupBowlFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedBowlPumpkinSoup.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.firedBowl,
      },
    },

    -- Pumpkin Soup
    firedBowlMeatStewChicken = {

      name = locale:get("object_meatStewChicken"),
      plural = locale:get("object_meatStewChicken_plural"),
      modelName = "meatStewBowlFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedBowlMeatStewChicken.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.firedBowl,
      },
    },

    -- Rotten Food Bowl
    firedBowlFoodBowlRotten = {
      name = locale:get("object_firedBowlFoodBowlRotten"),
      plural = locale:get("object_firedBowlFoodBowlRotten_plural"),
      modelName = "firedBowlMedicineRotten",
      scale = 1.0,
      hasPhysics = true,
      resourceTypeIndex = resource.types.firedBowlFoodBowlRotten.index,
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
    },
    -- Unfired Cooking Pot (Wet)
    unfiredCookingPotWet = {
      name = locale:get("object_unfiredCookingPotWet"),
      plural = locale:get("object_unfiredCookingPotWet_plural"),
      modelName = "unfiredCookingPot",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.unfiredCookingPotWet.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.4), 0.0)
        }
      }
    },

    -- Unfired Cooking Pot (Dry)
    unfiredCookingPotDry = {
      name = locale:get("object_unfiredCookingPotDry"),
      plural = locale:get("object_unfiredCookingPotDry_plural"),
      modelName = "unfiredCookingPot",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.unfiredCookingPotDry.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      }
    },

    -- Fired Cooking Pot
    firedCookingPot = {
      name = locale:get("object_firedCookingPot"),
      plural = locale:get("object_firedCookingPot_plural"),
      modelName = "firedCookingPot",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedCookingPot.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      }
    },

    -- Sunflower Flour

    unfiredUrnSunflowerFlour = {
      name = locale:get("object_unfiredUrnSunflowerFlour"),
      plural = locale:get("object_unfiredUrnSunflowerFlour"),
      modelName = "unfiredUrnSunflowerFlour",
      scale = 1.0,
      hasPhysics = true,
      
      resourceTypeIndex = resource.types.unfiredUrnSunflowerFlour.index,

      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
		  },
    },
    unfiredUrnSunflowerFlourRotten = {
      name = locale:get("object_unfiredUrnSunflowerFlourRotten"),
      plural = locale:get("object_unfiredUrnSunflowerFlourRotten"),
      modelName = "unfiredUrnSunflowerFlour",
      scale = 1.0,
      hasPhysics = true,
      
      resourceTypeIndex = resource.types.unfiredUrnSunflowerFlourRotten.index,
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      },
    },
    
    firedUrnSunflowerFlour = {
      name = locale:get("object_firedUrnSunflowerFlour"),
      plural = locale:get("object_firedUrnSunflowerFlour"),
      modelName = "firedUrnSunflowerFlour",
      scale = 1.0,
      hasPhysics = true,
      
      resourceTypeIndex = resource.types.firedUrnSunflowerFlour.index,

      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      },
    },
    firedUrnSunflowerFlourRotten = {
      name = locale:get("object_firedUrnSunflowerFlour"),
      plural = locale:get("object_firedUrnSunflowerFlourRotten"),
      modelName = "firedUrnSunflowerFlour",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.firedUrnSunflowerFlourRotten.index,
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      },
    },

    -- Sunflower Bread Dough

    sunflowerBreadDough = {
      name = locale:get("object_sunflowerBreadDough"),
      plural = locale:get("object_sunflowerBreadDough_plural"),
      modelName = "sunflowerBreadDough",
      scale = 1.0,
      hasPhysics = true,
      
      resourceTypeIndex = resource.types.sunflowerBreadDough.index,
  
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      },
    },
    sunflowerBreadDoughRotten = {
      name = locale:get("object_sunflowerBreadDoughRotten"),
      plural = locale:get("object_sunflowerBreadDoughRotten"),
      modelName = "sunflowerBreadDough",
      scale = 1.0,
      hasPhysics = true,
      
      resourceTypeIndex = resource.types.sunflowerBreadDoughRotten.index,
  
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.6), 0.0)
        }
      },
    },

    --Sunflower Bread

    sunflowerBread = {
      name = locale:get("object_sunflowerBread"),
      plural = locale:get("object_sunflowerBread_plural"),
      modelName = "sunflowerBread",
      scale = 1.0,
      hasPhysics = true,
      resourceTypeIndex = resource.types.sunflowerBread.index,
      objectViewRotationFunction = function(object) 
        return mat3Rotate(mat3Identity, 0.1, vec3(1.0, 0.0, 0.0))
      end,
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.2), 0.0)
        }
      },
    },
    sunflowerBreadRotten = {
      name = locale:get("object_sunflowerBreadRotten"),
      plural = locale:get("object_sunflowerBreadRotten"),
      modelName = "sunflowerBread",
      scale = 1.0,
      hasPhysics = true,
      resourceTypeIndex = resource.types.sunflowerBreadRotten.index,
      objectViewRotationFunction = function(object) 
        return mat3Rotate(mat3Identity, 0.1, vec3(1.0, 0.0, 0.0))
      end,
      markerPositions = {
        { 
          worldOffset = vec3(0.0, mj:mToP(0.2), 0.0)
        }
      },
    }
  })
end

return mod
