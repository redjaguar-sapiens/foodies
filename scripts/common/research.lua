--- Foodies: research.lua
--- @author RedJaguar

local order = mjrequire "common/order"
local locale = mjrequire "common/locale"
local resource = mjrequire "common/resource"

local mod = {
    loadOrder = 1,
}

function mod:onload(research)
    local super_load = research.load
    research.load = function(research_, gameObject, constructable, flora)
        super_load(research_, gameObject, constructable, flora)

        -- Cooking Pot
        
        research.types.potteryFiring.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.unfiredCookingPotDry.index] = constructable.types.firedCookingPot.index
        table.insert(research.types.potteryFiring.resourceTypeIndexes, resource.types.firedCookingPot.index)

        --[[research.types.campfireCooking.constructableTypeIndexArraysByBaseResourceTypeIndex[resource.types.firedCookingPot.index] = {constructable.types.gruel.index, constructable.types.beetrootSoup.index, constructable.types.pumpkinSoup.index}
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedCookingPot.index)--]]
        
        -- Gruel
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedCookingPot.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedCookingPot.index)        

        research:updateDerivedInfo(research.types.campfireCooking)
    end
end

return mod
