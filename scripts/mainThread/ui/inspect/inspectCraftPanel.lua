
local gameObject = mjrequire "common/gameObject"
local constructable = mjrequire "common/constructable"

local mod = {
    loadOrder = 1,
}

function mod:onload(inspectCraftPanel)

    local prevLoad = inspectCraftPanel.load
    inspectCraftPanel.load = function(inspectCraftPanel_, serinspectUI_, inspectObjectUI_, world_, parentContainerView)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 2, constructable.types.gruel.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 2, constructable.types.beetrootSoup.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 2, constructable.types.pumpkinSoup.index)
        prevLoad(inspectCraftPanel_, serinspectUI_, inspectObjectUI_, world_, parentContainerView)
    end
end

return mod
