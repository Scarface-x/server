-----------------------------------
-- Area: Abyssea Altepa
--  NPC: Cavernous Maw
-- !pos 444.000 -0.500 320.000 218
-- Notes Teleports Players to South Gustaberg
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    player:startEvent(200)
end

entity.onEventFinish = function(player, csid, option, npc)
    if csid == 200 and option == 1 then
        player:setPos(343, 0, -679, 199, 107)
    end
end

return entity
