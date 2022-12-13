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
        
        --[[
        -- Gruel
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.unfiredUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.unfiredUrnHulledWheat.index)

        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedUrnHulledWheat.index)
        --]]

        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedCookingPot.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedCookingPot.index)

        -- Beetroot Soup
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedCookingPot.index] = constructable.types.beetrootSoup.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedCookingPot.index)

        --[[ Pumpkin Soup
        table.remove(research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex, resource.types.pumpkin.index)
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.pumpkin.index] = {constructable.types.campfireRoastedPumpkin.index, constructable.types.pumpkinSoup.index}
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.pumpkin.index)
        --]]
        

        research:updateDerivedInfo(research.types.campfireCooking)
    end
end

return mod
