-----------------------------------
-- Area: Kazham
--  NPC: Khaffi Salponoihz
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    if player:getCharVar('BathedInScent') == 1 then
        player:startEvent(176) -- scent from Blue Rafflesias
    end
end

return entity
