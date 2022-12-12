--- Foodies: craftable.lua
--- @author RedJaguar

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3
local vec3xMat3 = mjm.vec3xMat3
local mat3Identity = mjm.mat3Identity
local mat3Rotate = mjm.mat3Rotate
--local mat3Inverse = mjm.mat3Inverse

local constructable = mjrequire "common/constructable"
local action = mjrequire "common/action"
local locale = mjrequire "common/locale"
local resource = mjrequire "common/resource"
local actionSequence = mjrequire "common/actionSequence"
local skill = mjrequire "common/skill"
local craftAreaGroup = mjrequire "common/craftAreaGroup"

local mod = {
    loadOrder = 1,
}

function mod:onload(craftable)
    local super_load = craftable.load
    craftable.load = function(craftable_, gameObject, flora)
        super_load(craftable_, gameObject, flora)

        craftable:addCraftable("gruel", {
            name = locale:get("craftable_gruel"),
            plural = locale:get("craftable_gruel_plural"),
            summary = locale:get("craftable_gruel_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlGruel,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
            disabledUntilCraftableResearched = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredBowlDry.index] = {
                      gameObject.typeIndexMap.unfiredBowlGruel,
                  },
                  [gameObject.types.firedBowl.index] = {
                      gameObject.typeIndexMap.firedBowlGruel,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.threshing.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },


            requiredResources = {
                {
                    group = resource.groups.bowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    group = resource.groups.urnHulledWheat.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            attachResourceToHandIndex = 1,
            attachResourceOffset = vec3xMat3(vec3(-0.7,0.1,0.02), craftable.cookingStickRotationOffset),
            attachResourceRotation = mat3Rotate(mat3Identity, math.pi * 0.5, vec3(0.0,0.0,1.0)),

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        -- Beetroot Soup

        craftable:addCraftable("beetrootSoup", {
            name = locale:get("craftable_beetrootSoup"),
            plural = locale:get("craftable_beetrootSoup_plural"),
            summary = locale:get("craftable_beetrootSoup_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlBeetrootSoup,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
            disabledUntilCraftableResearched = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredBowlDry.index] = {
                      gameObject.typeIndexMap.unfiredBowlBeetrootSoup,
                  },
                  [gameObject.types.firedBowl.index] = {
                      gameObject.typeIndexMap.firedBowlBeetrootSoup,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.pottery.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },


            requiredResources = {
                {
                    group = resource.groups.bowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.beetroot.index,
                    count = 2,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            attachResourceToHandIndex = 1,
            attachResourceOffset = vec3xMat3(vec3(-0.7,0.1,0.02), craftable.cookingStickRotationOffset),
            attachResourceRotation = mat3Rotate(mat3Identity, math.pi * 0.5, vec3(0.0,0.0,1.0)),

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        -- Pumpkin Soup

        craftable:addCraftable("pumpkinSoup", {
            name = locale:get("craftable_pumpkinSoup"),
            plural = locale:get("craftable_pumpkinSoup_plural"),
            summary = locale:get("craftable_pumpkinSoup_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlPumpkinSoup,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
            disabledUntilCraftableResearched = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredBowlDry.index] = {
                      gameObject.typeIndexMap.unfiredBowlPumpkinSoup,
                  },
                  [gameObject.types.firedBowl.index] = {
                      gameObject.typeIndexMap.firedBowlPumpkinSoup,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.pottery.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },


            requiredResources = {
                {
                    group = resource.groups.bowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.pumpkin.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            attachResourceToHandIndex = 1,
            attachResourceOffset = vec3xMat3(vec3(-0.7,0.1,0.02), craftable.cookingStickRotationOffset),
            attachResourceRotation = mat3Rotate(mat3Identity, math.pi * 0.5, vec3(0.0,0.0,1.0)),

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })
    end
end

return mod
