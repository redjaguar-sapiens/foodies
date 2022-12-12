--- Foodies: research.lua
--- @author RedJaguar

local order = mjrequire "common/order"
local locale = mjrequire "common/locale"
local resource = mjrequire "common/resource"

local mod = {
    loadOrder = 1,
}

function mod:onload(research)
    local prevLoad = research.load
    research.load = function(research_, gameObject, constructable, flora)
        prevLoad(research_, gameObject, constructable, flora)

        -- Gruel
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.unfiredUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.unfiredUrnHulledWheat.index)

        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedUrnHulledWheat.index)

        -- Beetroot Soup
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.beetroot.index] = constructable.types.beetrootSoup.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.beetroot.index)

        -- Pumpkin Soup
        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.pumpkin.index] = constructable.types.pumpkinSoup.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.pumpkin.index)

        research:updateDerivedInfo(research.types.campfireCooking)
    end
end

return mod
