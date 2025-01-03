
local mod = {
    loadOrder = 1,
}

function mod:onload(model)
    local super_loadRemaps = model.loadRemaps
    model.loadRemaps = function(model_)
        model.remapModels.unfiredCookingPot = {
            unfiredCookingPotWet = {
                clay = "clayWet",
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
            unfiredUrnFlaxseedFlour = {
                grain = "flaxseedFlour",
            },
            unfiredUrnFlaxseedFlourRotten = {
                grain = "flaxseedFlourRotten",
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
            firedUrnFlaxseedFlour = {
                grain = "flaxseedFlour",
            },
            firedUrnFlaxseedFlourRotten = {
                grain = "flaxseedFlourRotten",
            },
        }
        model.remapModels.sunflowerBreadDough = {
            sunflowerBreadDough = {
                breadDough = "sunflowerBreadDough",
            },
            sunflowerBreadDoughRotten = {
                breadDough = "sunflowerBreadDoughRotten",
            }
        }
        model.remapModels.sunflowerBread = {
            sunflowerBread = {
                bread = "sunflowerBread",
            },
            sunflowerBreadRotten = {
                bread = "sunflowerBreadRotten",
            }
        }
        model.remapModels.flaxseedBreadDough = {
            flaxseedBreadDough = {
                breadDough = "flaxseedBreadDough",
            },
            flaxseedBreadDoughRotten = {
                breadDough = "flaxseedBreadDoughRotten",
            }
        }
        model.remapModels.flaxseedBread = {
            flaxseedBread = {
                bread = "flaxseedBread",
            },
            flaxseedBreadRotten = {
                bread = "flaxseedBreadRotten",
            }
        }

        super_loadRemaps(model_)
    end
end

return mod