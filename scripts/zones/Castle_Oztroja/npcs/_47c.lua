-----------------------------------
-- Area: Castle Oztroja
--  NPC: _47c (Handle)
-- Notes: Opens Trap Door (_47a) or Brass Door (_470)
-- !pos 17.717 -1.087 -14.320 151
-----------------------------------
local ID = zones[xi.zone.CASTLE_OZTROJA]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    local xPos = player:getXPos()
    local zPos = player:getZPos()
    local trapDoor  = GetNPCByID(npc:getID() - 2)
    local brassDoor = GetNPCByID(npc:getID() - 3)

    if xPos < 21.6 and xPos > 18 and zPos > -15.6 and zPos < -12.4 then
        if VanadielDayOfTheYear() % 2 == 0 then
            if
                brassDoor and
                brassDoor:getAnimation() == xi.anim.CLOSE_DOOR and
                npc:getAnimation() == xi.anim.CLOSE_DOOR
            then
                npc:openDoor(8)
                -- wait 1 second delay goes here
                brassDoor:openDoor(6)
            end
        else
            if
                trapDoor and
                trapDoor:getAnimation() == xi.anim.CLOSE_DOOR and
                npc:getAnimation() == xi.anim.CLOSE_DOOR
            then
                npc:openDoor(8)
                -- wait 1 second delay goes here
                trapDoor:openDoor(6)
            end

            if
                player:getCurrentMission(xi.mission.log_id.WINDURST) == xi.mission.id.windurst.TO_EACH_HIS_OWN_RIGHT and
                player:getMissionStatus(player:getNation()) == 3
            then
                player:startEvent(43)
            end
        end
    else
        player:messageSpecial(ID.text.CANNOT_REACH_TARGET)
    end
end

return entity
