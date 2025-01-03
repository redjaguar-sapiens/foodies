--- Foodies: inspectCraftPanel.lua
--- @author RedJaguar

local gameObject = mjrequire "common/gameObject"
local constructable = mjrequire "common/constructable"

local mod = {
    loadOrder = 1,
}

function mod:onload(inspectCraftPanel)

    local super_load = inspectCraftPanel.load
    inspectCraftPanel.load = function(inspectCraftPanel_, serinspectUI_, inspectObjectUI_, world_, parentContainerView)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 2, constructable.types.gruel.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 2, constructable.types.heartyBoneBroth.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 4, constructable.types.beetrootSoup.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 4, constructable.types.pumpkinSoup.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 4, constructable.types.meatStewChicken.index)
        
        -- Left in to avoid breaking existing saves
        --table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 1, constructable.types.flaxseedBread.index)
        --table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.campfire], 1, constructable.types.sunflowerBread.index)

        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 25, constructable.types.unfiredCookingPotWet.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 31, constructable.types.snackTrailMix.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 31, constructable.types.pemmican.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 44, constructable.types.unfiredUrnSunflowerFlour.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 44, constructable.types.unfiredUrnFlaxseedFlour.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 33, constructable.types.butcherAnimal.index)

        -- Left in to avoid breaking existing saves
        --table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 1, constructable.types.flaxseedBreadDough.index)
        --table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.craftArea], 1, constructable.types.sunflowerBreadDough.index)
        
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.brickKiln], 5, constructable.types.firedCookingPot.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.brickKiln], 1, constructable.types.snackBiltong.index)
        table.insert(inspectCraftPanel.itemLists[gameObject.typeIndexMap.brickKiln], 2, constructable.types.breadBulk.index)

        super_load(inspectCraftPanel_, serinspectUI_, inspectObjectUI_, world_, parentContainerView)
    end
end

return mod
