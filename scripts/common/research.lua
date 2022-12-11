
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

        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.unfiredUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.unfiredUrnHulledWheat.index)

        research.types.campfireCooking.constructableTypeIndexesByBaseResourceTypeIndex[resource.types.firedUrnHulledWheat.index] = constructable.types.gruel.index
        table.insert(research.types.campfireCooking.resourceTypeIndexes, resource.types.firedUrnHulledWheat.index)

        research:updateDerivedInfo(research.types.campfireCooking)
    end
end

return mod
