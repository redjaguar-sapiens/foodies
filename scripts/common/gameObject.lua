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

    })
end

return mod
