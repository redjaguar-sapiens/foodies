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

        evolvingObject.evolutions[gameObject.types.unfiredCookingPotWet.index] = {
            minTime = 240.0,
            toType = gameObject.types.unfiredCookingPotDry.index,
            categoryIndex = evolvingObject.categories.dry.index,
        }
        
    end
end

return mod