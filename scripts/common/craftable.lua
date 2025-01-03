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

local afterActionTemplate = {
    actionTypeIndex = action.types.inspect.index,
    duration = 0.5,
    durationWithoutSkill = 10.0,
}

function mod:onload(craftable)
    local super_load = craftable.load
    craftable.load = function(craftable_, gameObject, flora)
        super_load(craftable_, gameObject, flora)

        --- Trail Mix

        craftable:addCraftable("snackTrailMix", {
            name = locale:get("craftable_snackTrailMix"),
            plural = locale:get("craftable_snackTrailMix_plural"),
            summary = locale:get("craftable_snackTrailMix_summary"),
            iconGameObjectType = gameObject.typeIndexMap.snackTrailMix,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                    gameObject.typeIndexMap.snackTrailMix,
                }
            },

            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.potteryCraft.index, nil),
            inProgressBuildModel = "craftSimple",

            skills = {
                required = skill.types.campfireCooking.index,
            },

            outputDisplayCounts = {
                {
                    type = resource.types.snackTrailMix.index,
                    count = 10
                }
            },

            requiredResources = {
                {
                    type = resource.types.flaxSeed.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.sunflowerSeed.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.raspberry.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.gooseberry.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.elderberry.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
            },
        })

        --- Biltong

        craftable:addCraftable("snackBiltong", {
            name = locale:get("craftable_snackBiltong"),
            plural = locale:get("craftable_snackBiltong_plural"),
            summary = locale:get("craftable_snackBiltong_summary"),
            iconGameObjectType = gameObject.typeIndexMap.snackBiltong,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                    gameObject.typeIndexMap.snackBiltong,
                }
            },

            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            skills = {
                required = skill.types.butchery.index,
            },

            outputDisplayCounts = {
                {
                    type = resource.types.snackBiltong.index,
                    count = 8
                }
            },

            requiredResources = {
                {
                    type = resource.types.alpacaMeat.index,
                    count = 2,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 10.0,
                        durationWithoutSkill = 15.0,
                    },
                },
            },
            requiredCraftAreaGroups = {
                craftAreaGroup.types.kiln.index,
            },
            
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Pemmican

        craftable:addCraftable("pemmican", {
            name = locale:get("craftable_pemmican"),
            plural = locale:get("craftable_pemmican_plural"),
            summary = locale:get("craftable_pemmican_summary"),
            iconGameObjectType = gameObject.typeIndexMap.pemmican,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.pemmican,
                    gameObject.typeIndexMap.pemmican,
                    gameObject.typeIndexMap.pemmican,
                    gameObject.typeIndexMap.pemmican,
                }
            },

            buildSequence = craftable.grindingSequence,
            inProgressBuildModel = "craftGrinding",

            skills = {
                required = skill.types.grinding.index,
            },

            outputDisplayCounts = {
                {
                    type = resource.types.pemmican.index,
                    count = 4
                }
            },

            requiredResources = {
                {
                    type = resource.types.snackBiltong.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    group = resource.groups.berryAny.index,
                    count = 2,
                    afterAction = afterActionTemplate
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

        --- Gruel
        craftable:addCraftable("gruel", {
            name = locale:get("craftable_gruel"),
            plural = locale:get("craftable_gruel_plural"),
            summary = locale:get("craftable_gruel_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlGruel,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
            disabledUntilCraftableResearched = true,
            
            -- (4 x gruels produced)
            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredUrnHulledWheat.index] = {
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.unfiredUrnDry,
                      gameObject.typeIndexMap.firedCookingPot,
                  },
                  [gameObject.types.firedUrnHulledWheat.index] = {
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedBowlGruel,
                      gameObject.typeIndexMap.firedBowlGruel,
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

            outputDisplayCounts = {
                {
                    type = resource.types.firedBowlGruel.index,
                    count = 4
                }
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 4,
                    afterAction = afterActionTemplate
                },
                {
                    group = resource.groups.urnHulledWheat.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.campfire.index,
            },

            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        --- Bone Broth

        craftable:addCraftable("heartyBoneBroth", {
            name = locale:get("craftable_heartyBoneBroth"),
            plural = locale:get("craftable_heartyBoneBroth_plural"),
            summary = locale:get("craftable_heartyBoneBroth_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedBowlHeartyBoneBroth,
                    gameObject.typeIndexMap.firedCookingPot,
                }
            },

            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "craftSimple",

            disabledUntilAdditionalSkillTypeDiscovered = skill.types.potteryFiring.index,

            skills = {
                required = skill.types.campfireCooking.index,
            },

            outputDisplayCounts = {
                {
                    type = resource.types.firedBowlHeartyBoneBroth.index,
                    count = 6
                }
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.bone.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.beetroot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.garlic.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.gingerRoot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 6,
                    afterAction = afterActionTemplate
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
                    gameObject.typeIndexMap.firedBowlBeetrootSoup,
                    gameObject.typeIndexMap.firedBowlBeetrootSoup,
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

            outputDisplayCounts = {
                {
                    type = resource.types.firedBowlBeetrootSoup.index,
                    count = 4
                }
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.beetroot.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.garlic.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 4,
                    afterAction = afterActionTemplate
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
                    gameObject.typeIndexMap.firedBowlPumpkinSoup,
                    gameObject.typeIndexMap.firedBowlPumpkinSoup,
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

            outputDisplayCounts = {
                {
                    type = resource.types.firedBowlPumpkinSoup.index,
                    count = 4
                }
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.pumpkin.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.turmericRoot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 4,
                    afterAction = afterActionTemplate
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
                    gameObject.typeIndexMap.firedBowlMeatStewChicken,
                    gameObject.typeIndexMap.firedBowlMeatStewChicken,
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

            outputDisplayCounts = {
                {
                    type = resource.types.firedBowlMeatStewChicken.index,
                    count = 4
                }
            },

            requiredResources = {
                {
                    type = resource.types.firedCookingPot.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.chickenMeat.index,
                    count = 2,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.garlic.index,
                    count = 1,
                    afterAction = afterActionTemplate
                },
                {
                    type = resource.types.firedBowl.index,
                    count = 4,
                    afterAction = afterActionTemplate
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
                    afterAction = afterActionTemplate
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
                    afterAction = afterActionTemplate
                },
            },

            requiredCraftAreaGroups = {
                craftAreaGroup.types.kiln.index,
            },
    
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        local breadOutputArraysByResourceObjectType = {
            [gameObject.types.breadDough.index] = {
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
            },
            [gameObject.types.sunflowerBreadDough.index] = {
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
            },
            [gameObject.types.flaxseedBreadDough.index] = {
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
            },
        }

        -- Bread - All
        craftable:addCraftable("flatbread", {
            name = locale:get("craftable_bread"),
            plural = locale:get("craftable_bread_plural"),
            summary = locale:get("craftable_bread_summary"),
            iconGameObjectType = gameObject.typeIndexMap.flatbread,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            outputObjectInfo = {
                outputArraysByResourceObjectType = breadOutputArraysByResourceObjectType
            },
    
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "campfireRockCooking",
    
            skills = {
                required = skill.types.baking.index,
            },
    
            requiredResources = {
                {
                    group = resource.groups.breadDoughAny.index,
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
    
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
        })

        -- Bread - All - bulk

        local breadBulkOutputArraysByResourceObjectType = {
            [gameObject.types.breadDough.index] = {
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
                gameObject.typeIndexMap.flatbread,
            },
            [gameObject.types.flaxseedBreadDough.index] = {
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
                gameObject.typeIndexMap.flaxseedBread,
            },
            [gameObject.types.sunflowerBreadDough.index] = {
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
                gameObject.typeIndexMap.sunflowerBread,
            },
        }

        craftable:addCraftable("breadBulk", {
            name = locale:get("craftable_breadBulk"),
            plural = locale:get("craftable_breadBulk_plural"),
            summary = locale:get("craftable_breadBulk_summary"),
            iconGameObjectType = gameObject.typeIndexMap.flatbread,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
            
            outputObjectInfo = {
                outputArraysByResourceObjectType = breadBulkOutputArraysByResourceObjectType
            },
    
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
    
            skills = {
                required = skill.types.baking.index,
            },
    
            requiredResources = {
                {
                    group = resource.groups.breadDoughAny.index,
                    count = 2,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.5,
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

        -- Bread Dough - All

        local breadDoughOutputArraysByResourceObjectType = {
            [gameObject.types.unfiredUrnFlour.index] = {
                gameObject.typeIndexMap.breadDough,
                gameObject.typeIndexMap.unfiredUrnDry,
            },
            [gameObject.types.firedUrnFlour.index] = {
                gameObject.typeIndexMap.breadDough,
                gameObject.typeIndexMap.firedUrn,
            },
            [gameObject.types.unfiredUrnSunflowerFlour.index] = {
                gameObject.typeIndexMap.sunflowerBreadDough,
                gameObject.typeIndexMap.unfiredUrnDry,
            },
            [gameObject.types.firedUrnSunflowerFlour.index] = {
                gameObject.typeIndexMap.sunflowerBreadDough,
                gameObject.typeIndexMap.firedUrn,
            },
            [gameObject.types.unfiredUrnFlaxseedFlour.index] = {
                gameObject.typeIndexMap.flaxseedBreadDough,
                gameObject.typeIndexMap.unfiredUrn,
            },
            [gameObject.types.firedUrnFlaxseedFlour.index] = {
                gameObject.typeIndexMap.flaxseedBreadDough,
                gameObject.typeIndexMap.firedUrn,
            },
        }
    
        craftable:addCraftable("breadDough", {
            name = locale:get("craftable_breadDough"),
            plural = locale:get("craftable_breadDough_plural"),
            summary = locale:get("craftable_breadDough_summary"),
            iconGameObjectType = gameObject.typeIndexMap.breadDough,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            outputObjectInfo = {
                outputArraysByResourceObjectType = breadDoughOutputArraysByResourceObjectType
            },
    
            outputDisplayCounts = {
                {
                    group = resource.groups.breadDoughAny.index,
                    count = 1
                }
            },
            
            buildSequence = craftable.kneedingSequence,
            inProgressBuildModel = "craftSimple",
    
            skills = {
                required = skill.types.baking.index,
            },
            requiredResources = {
                {
                    group = resource.groups.urnFlour.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            
        })

        -- TEMP

        craftable:addCraftable("sunflowerBreadDough", {
            name = "Sunflower Bread Dough",
            plural = "Sunflower Bread Dough",
            summary = "DEPRECATED",
            iconGameObjectType = gameObject.typeIndexMap.sunflowerBreadDough,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            utputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.sunflowerBreadDough,
                    gameObject.typeIndexMap.firedUrn,
                }
            },
    
            outputDisplayCounts = {
                {
                    type = resource.types.sunflowerBreadDough.index,
                    count = 1
                }
            },
            
            buildSequence = craftable.kneedingSequence,
            inProgressBuildModel = "craftSimple",
    
            skills = {
                required = skill.types.baking.index,
            },
            requiredResources = {
                {
                    group = resource.groups.urnFlour.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            
        })
        craftable:addCraftable("flaxseedBreadDough", {
            name = "Flaxseed Bread Dough",
            plural = "Flaxseed Bread Dough",
            summary = "DEPRECATED",
            iconGameObjectType = gameObject.typeIndexMap.flaxseedBreadDough,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            utputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.flaxseedBreadDough,
                    gameObject.typeIndexMap.firedUrn,
                }
            },
    
            outputDisplayCounts = {
                {
                    type = resource.types.flaxseedBreadDough.index,
                    count = 1
                }
            },
            
            buildSequence = craftable.kneedingSequence,
            inProgressBuildModel = "craftSimple",
    
            skills = {
                required = skill.types.baking.index,
            },
            requiredResources = {
                {
                    group = resource.groups.urnFlour.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            
        })
        craftable:addCraftable("flaxseedBread", {
            name = "Flaxseed Bread",
            plural = "Flaxseed Bread",
            summary = "DEPRECATED",
            iconGameObjectType = gameObject.typeIndexMap.flaxseedBread,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            utputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.flaxseedBread,
                    gameObject.typeIndexMap.flaxseedBread,
                    gameObject.typeIndexMap.flaxseedBread,
                    gameObject.typeIndexMap.flaxseedBread,
                    gameObject.typeIndexMap.flaxseedBread,
                }
            },
            
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "campfireRockCooking",
    
            skills = {
                required = skill.types.baking.index,
            },
    
            requiredResources = {
                {
                    type = resource.types.flaxseedBreadDough.index,
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
    
            temporaryToolObjectType = gameObject.typeIndexMap.stick,
            temporaryToolOffset = vec3xMat3(vec3(-0.35,0.0,0.0), craftable.cookingStickRotationOffset),
            temporaryToolRotation = craftable.cookingStickRotation,
            
        })

        craftable:addCraftable("sunflowerBread", {
            name = "Sunflower Bread",
            plural = "Sunflower Bread",
            summary = "DEPRECATED",
            iconGameObjectType = gameObject.typeIndexMap.sunflowerBread,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            utputObjectInfo = {
                objectTypesArray = {
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                    gameObject.typeIndexMap.sunflowerBread,
                }
            },
    
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.fireStickCook.index, nil),
            inProgressBuildModel = "campfireRockCooking",
    
            skills = {
                required = skill.types.baking.index,
            },
    
            requiredResources = {
                {
                    type = resource.types.sunflowerBreadDough.index,
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
                    count = 3,
                    afterAction = afterActionTemplate
                },
                {
                    group = resource.groups.container.index,
                    count = 1,
                    afterAction = afterActionTemplate
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

        --- Flaxseed Flour

        craftable:addCraftable("unfiredUrnFlaxseedFlour", {
            name = locale:get("craftable_flaxseedFlour"),
            plural = locale:get("craftable_flaxseedFlour_plural"),
            summary = locale:get("craftable_flaxseedFlour_summary"),
            iconGameObjectType = gameObject.typeIndexMap.firedUrnFlaxseedFlour,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,

            outputObjectInfo = {
                outputArraysByResourceObjectType = {
                  [gameObject.types.unfiredUrnDry.index] = {
                      gameObject.typeIndexMap.unfiredUrnFlaxseedFlour,
                  },
                  [gameObject.types.firedUrn.index] = {
                    gameObject.typeIndexMap.firedUrnFlaxseedFlour,
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
                    type = resource.types.flaxSeed.index,
                    count = 3,
                    afterAction = afterActionTemplate
                },
                {
                    group = resource.groups.container.index,
                    count = 1,
                    afterAction = afterActionTemplate
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

        -- Butcher Animal - All

        local butcherAnimalOutputArraysByResourceObjectType = {
            [gameObject.types.deadChicken.index] = {
                gameObject.typeIndexMap.chickenMeat,
                gameObject.typeIndexMap.chickenMeat,
                gameObject.typeIndexMap.chickenMeatBreast,
                gameObject.typeIndexMap.chickenMeatBreast,
            },
            [gameObject.types.deadAlpaca.index] = {
                gameObject.typeIndexMap.alpacaMeatLeg,
                gameObject.typeIndexMap.alpacaMeatLeg,
                gameObject.typeIndexMap.alpacaMeatLeg,
                gameObject.typeIndexMap.alpacaMeatLeg,
                gameObject.typeIndexMap.alpacaMeatRack,
                gameObject.typeIndexMap.alpacaMeatRack,
                gameObject.typeIndexMap.alpacaWoolskin,
                gameObject.typeIndexMap.alpacaWoolskin,
                gameObject.typeIndexMap.alpacaWoolskin,
                gameObject.typeIndexMap.alpacaWoolskin,
            },
        }

        craftable:addCraftable("butcherAnimal", {
            name = locale:get("craftable_butcherAnimal"),
            plural = locale:get("craftable_butcherAnimal_plural"),
            summary = locale:get("craftable_butcherAnimal_summary"),
            actionText = locale:get("order_butcher"),
            actionInProgressText = locale:get("order_butcher_inProgress"),
            actionObjectName = "Carcass",
            actionObjectNamePlural = "Raw Meat",
            iconGameObjectType = gameObject.typeIndexMap.alpacaMeatRack,
            classification = constructable.classifications.craft.index,
            isFoodPreperation = true,
    
            outputObjectInfo = {
                outputArraysByResourceObjectType = butcherAnimalOutputArraysByResourceObjectType
            },
    
            buildSequence = craftable:createStandardBuildSequence(actionSequence.types.butcher.index, tool.types.butcher.index),
            inProgressBuildModel = "craftSimple",
    
            skills = {
                required = skill.types.butchery.index,
            },
            requiredResources = {
                {
                    group = resource.groups.animalCarcass.index,
                    count = 1,
                    afterAction = {
                        actionTypeIndex = action.types.inspect.index,
                        duration = 1.0,
                        durationWithoutSkill = 15.0,
                    }
                },
            },
            requiredTools = {
                tool.types.butcher.index,
            }
        })

    end
end

return mod
