--- Foodies: tool.lua
--- @author RedJaguar

local typeMaps = mjrequire "common/typeMaps"
local locale = mjrequire "common/locale"

local mod = {
    loadOrder = 1,
}

function mod:onload(tool)

    local gameObjectTypeIndexMap = typeMaps.types.gameObject

    typeMaps:insert("tool", tool.types, {
        key = "cooking",
        name = locale:get("tool_cookPot"),
        plural = locale:get("tool_cookPot_plural"),
        usage = locale:get("tool_cookPot_usage"),
        displayGameObjectTypeIndex = gameObjectTypeIndexMap.firedCookingPot,
    })

end
return mod