-----------------------------------
-- ID: 14671
-- Item: allied ring
-- Experience point bonus
-----------------------------------
-- Bonus: +150%
-- Duration: 720 min
-- Max bonus: 30000 exp
-----------------------------------
---@type TItem
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    local result = 0
    if target:hasStatusEffect(xi.effect.DEDICATION) then
        result = xi.msg.basic.ITEM_UNABLE_TO_USE_2
    end

    return result
end

itemObject.onItemUse = function(target)
    local effect    = xi.effect.DEDICATION
    local power     = 150
    local duration  = 43200
    local subpower  = 30000

    xi.itemUtils.addItemExpEffect(target, effect, power, duration, subpower)
end

return itemObject
