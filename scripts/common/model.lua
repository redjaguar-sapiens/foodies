
local mod = {
    loadOrder = 1,
}

function mod:onload(model)
    local super_loadRemaps = model.loadRemaps
    model.loadRemaps = function(model_)
        model.remapModels.unfiredCookingPot = {
            unfiredCookingPotWet = {
                clay = "clay",
            },
        }
        model.remapModels.unfiredUrnGrain = {
            unfiredUrnWheat = {
                grain = "wheatGrain"
            },
            unfiredUrnFlour = {
                grain = "flour"
            },
            unfiredUrnWheatRotten = {
                grain = "wheatGrainRotten"
            },
            unfiredUrnFlourRotten = {
                grain = "flourRotten"
            },
            unfiredUrnSunflowerFlour = {
                grain = "sunflowerFlour",
            },
            unfiredUrnSunflowerFlourRotten = {
                grain = "sunflowerFlourRotten",
            },
        }
        model.remapModels.firedUrnGrain = {
            firedUrnWheat = {
                grain = "wheatGrain"
            },
            firedUrnFlour = {
                grain = "flour"
            },
            firedUrnWheatRotten = {
                grain = "wheatGrainRotten"
            },
            firedUrnFlourRotten = {
                grain = "flourRotten"
            },
            firedUrnSunflowerFlour = {
                grain = "sunflowerFlour",
            },
            firedUrnSunflowerFlourRotten = {
                grain = "sunflowerFlourRotten",
            },
        }
        model.remapModels.breadDough = {
            breadDoughRotten = {
                breadDough = "breadDoughRotten",
            },
            sunflowerBreadDough = {
                breadDough = "sunflowerBreadDough",
            },
            sunflowerBreadDoughRotten = {
                breadDough = "sunflowerBreadDoughRotten",
            }
        }
        model.remapModels.flatBread = {
            flatbreadRotten = {
                bread = "rottenBread",
                darkBread = "darkRottenBread",
            },
            sunflowerBread = {
                bread = "sunflowerBread",
            },
            sunflowerBreadRotten = {
                breadDough = "sunflowerBreadRotten",
            }
        }

        super_loadRemaps(model_)
    end
end

return mod