--- Foodies: gameObject.lua
--- @author RedJaguar

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

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

    unfiredBowlGruel = {
      name = locale:get("object_gruel"),
      plural = locale:get("object_gruel_plural"),
      modelName = "gruelBowlUnFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.unfiredBowlGruel.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.unfiredBowlDry,
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

    unfiredBowlBeetrootSoup = {
      name = locale:get("object_beetrootSoup"),
      plural = locale:get("object_beetrootSoup_plural"),
      modelName = "beetrootSoupBowlUnFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.unfiredBowlBeetrootSoup.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.unfiredBowlDry,
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

    unfiredBowlPumpkinSoup = {
      name = locale:get("object_pumpkinSoup"),
      plural = locale:get("object_pumpkinSoup_plural"),
      modelName = "pumpkinSoupBowlUnFired",
      scale = 1.0,
      hasPhysics = true,

      resourceTypeIndex = resource.types.unfiredBowlPumpkinSoup.index,

      markerPositions = {
        {
          worldOffset = vec3(0.0, mj:mToP(0.3), 0.0)
        }
      },
      eatByProducts = {
        gameObject.typeIndexMap.unfiredBowlDry,
      },
    },

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

    })
end

return mod
