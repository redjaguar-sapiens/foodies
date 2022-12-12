
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

        super_loadRemaps(model_)
    end
end

return mod