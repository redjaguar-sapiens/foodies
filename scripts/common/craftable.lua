--- Foodies: craftable.lua
--- @author RedJaguar

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3
local vec3xMat3 = mjm.vec3xMat3
local mat3Identity = mjm.mat3Identity
local mat3Rotate = mjm.mat3Rotate
--local mat3Inverse = mjm.mat3Inverse

local constructable = mjrequire "common/constructable"
local tool = mjrequire "common/tool"
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

        --- Gruel
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
                  [gameObject.types.unfiredUrnHulledWheat.index] = {
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.unfiredUrnDry,
                      gameObject.typeIndexMap.firedCookingPot,
                  },
                  [gameObject.types.firedUrnHulledWheat.index] = {
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedUrn,
                      gameObject.typeIndexMap.firedCookingPot,
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
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                -- Switch to fired bowls for all recipes (it's hot, duh)
                {
                    type = resource.types.firedBowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    group = resource.groups.urnHulledWheat.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Beetroot Soup

        craftable:addCraftable("beetrootSoup", {
            name = locale:get("craftable_beetrootSoup"),
            plural = locale:get("craftable_beetrootSoup_plural"),
            summary = locale:get("craftable_beetrootSoup_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlBeetrootSoup,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.firedCookingPot.index] = {
                    gameObject.typeIndexMap.firedBowlBeetrootSoup,
                    gameObject.typeIndexMap.firedCookingPot,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.potteryFiring.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.beetroot.index,
                    count = 2,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            
            --[[requiredTools = {
                tool.types.cooking.index,
            },]]

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Pumpkin Soup

        craftable:addCraftable("pumpkinSoup", {
            name = locale:get("craftable_pumpkinSoup"),
            plural = locale:get("craftable_pumpkinSoup_plural"),
            summary = locale:get("craftable_pumpkinSoup_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlPumpkinSoup,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.firedCookingPot.index] = {
                    gameObject.typeIndexMap.firedBowlPumpkinSoup,
                    gameObject.typeIndexMap.firedCookingPot,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.potteryFiring.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
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
                {
                    type = resource.types.firedBowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        -- Meat Stew (Chicken)

        craftable:addCraftable("meatStewChicken", {
            name = locale:get("craftable_meatStewChicken"),
            plural = locale:get("craftable_meatStewChicken_plural"),
            summary = locale:get("craftable_meatStewChicken_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlMeatStewChicken,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.firedCookingPot.index] = {
                    gameObject.typeIndexMap.firedBowlMeatStewChicken,
                    gameObject.typeIndexMap.firedCookingPot,
                  },
                }
            },
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.potteryFiring.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.chickenMeat.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 0.5,
                        durationWithoutSkill = 15.0,
                    }
                },
                
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Cooking Pot - Unfired Wet

        craftable:addCraftable("unfiredCookingPotWet", {
            name = locale:get("craftable_unfiredCookingPotWet"),
            plural = locale:get("craftable_unfiredCookingPotWet_plural"),
            summary = locale:get("craftable_unfiredCookingPotWet_summary"),
            iconGameObjectType = gameObject.typeIndexMap.unfiredCookingPotDry,
            classification = constructable.classifications.craft.index,

            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.potteryCraft.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.pottery.index,

            skills = {
                required = skill.types.pottery.index,
            },

            requiredResources = {
                {
                    type = resource.types.clay.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
        })

        --- Cooking Pot - Fired

        craftable:addCraftable("firedCookingPot", {
            name = locale:get("craftable_firedCookingPot"),
            plural = locale:get("craftable_firedCookingPot_plural"),
            summary = locale:get("craftable_firedCookingPot_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedCookingPot,
            classification = constructable.classifications.craft.index,

            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            skills = {
                required = skill.types.potteryFiring.index,
            },

            requiredResources = {
                {
                    type = resource.types.unfiredCookingPotDry.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.kiln.index,
            },
    
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Sunflower Flour

        craftable:addCraftable("unfiredUrnSunflowerFlour", {
            name = locale:get("craftable_sunflowerFlour"),
            plural = locale:get("craftable_sunflowerFlour_plural"),
            summary = locale:get("craftable_sunflowerFlour_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedUrnSunflowerFlour,
            classification = constructable.classifications.craft.index,
            --placeBuildObjectsInFinalLocationsOnDropOff = true,
            isFoodPreperation = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredUrnDry.index] = {
                      gameObject.typeIndexMap.unfiredUrnSunflowerFlour,
                  },
                  [gameObject.types.firedUrn.index] = {
                    gameObject.typeIndexMap.firedUrnSunflowerFlour,
                },
                }
            },

            buildSequence = craftable.grindingSequence,
            inProgressBuildModel = "craftGrinding",

            skills = {
                required = skill.types.grinding.index,
            },

            requiredResources = {
                {
                    type = resource.types.sunflowerSeed.index,
                    count = 4,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
                {
                    group = resource.groups.container.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            
            requiredTools = {
                tool.types.grinding.index,
            },
            dontPickUpRequiredTool = true,

            temporaryToolObjectType = gameObject.typeIndexMap.rockSmall,
            temporaryToolOffset = vec3(0.0,0.01,0.0),
            temporaryToolRotation = mat3Identity,
        })

        craftable:addCraftable("sunflowerBreadDough", {
            name = locale:get("craftable_sunflowerBreadDough"),
            plural = locale:get("craftable_sunflowerBreadDough_plural"),
            summary = locale:get("craftable_sunflowerBreadDough_summary"),
            iconGameObjectType = gameObject.typeIndexMap.sunflowerBreadDough,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                    [gameObject.types.unfiredUrnSunflowerFlour.index] = {
                        gameObject.typeIndexMap.sunflowerBreadDough,
                        gameObject.typeIndexMap.unfiredUrnDry,
                    },
                    [gameObject.types.firedUrnSunflowerFlour.index] = {
                        gameObject.typeIndexMap.sunflowerBreadDough,
                        gameObject.typeIndexMap.firedUrn,
                    },
                }
            },
    
            buildSequence = craftable.kneedingSequence,
            inProgressBuildModel = "craftSimple",
    
            skills = {
                required = skill.types.baking.index,
            },
            requiredResources = {
                {
                    group = resource.groups.urnSunflowerFlour.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
    
        })

        craftable:addCraftable("sunflowerBread", {
            name = locale:get("craftable_sunflowerBread"),
            plural = locale:get("craftable_sunflowerBread_plural"),
            summary = locale:get("craftable_sunflowerBread_summary"),
            iconGameObjectType = gameObject.typeIndexMap.sunflowerBread,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            outputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                }
            },
    
            outputDisplayCount = 5,
    
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "campfireRockCooking",
    
            skills = {
                required = skill.types.baking.index,
            },
    
            requiredResources = {
                {
                    type = resource.types.sunflowerBreadDough.index,
                    count = 1,
                },
            },
    
            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },
    
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

    end
end

return mod
