-----------------------------------
-- Area: Port Jeuno
--  NPC: Kochahy-Muwachahy
-- !pos 40 0 6 246
-----------------------------------
---@type TNpcEntity
local entity = {}

local guardNation = xi.nation.OTHER
local guardType   = xi.conquest.guard.CITY
local guardEvent  = 32763

entity.onTrade = function(player, npc, trade)
    xi.conquest.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

entity.onTrigger = function(player, npc)
    xi.conquest.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent)
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.conquest.overseerOnEventUpdate(player, csid, option, guardNation)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.conquest.overseerOnEventFinish(player, csid, option, guardNation, guardType)
end

return entity
