-----------------------------------
-- A Shot in the Dark (A_Shot_in_the_Dark)
-- Adoulin Fame Quest Cycle 3/3
-- https://ffxiclopedia.fandom.com/wiki/A_Shot_in_the_Dark
-- https://www.bg-wiki.com/ffxi/A_Shot_in_the_Dark
-----------------------------------
-- UMBRIL_OOZE : !additem 3935
-- Pudith      : !pos -109.533 -0.150 56.939 257
-----------------------------------

local quest = Quest:new(xi.questLog.ADOULIN, xi.quest.id.adoulin.A_SHOT_IN_THE_DARK)

-- NOTE:
-- It is reported that to reach max fame (~610) you must complete this cycle of quests
-- around 30 times, for a total of ~100 quests.
-- 610 / 100 = ~6 fame each
quest.reward =
{
    fame     = 6,
    fameArea = xi.fameArea.ADOULIN,
    bayld    = 200,
    exp      = 500,
}

quest.sections =
{
    -- Section: Begin quest (First time)
    {
        check = function(player, status, vars)
            return status == xi.questStatus.QUEST_AVAILABLE
        end,

        [xi.zone.EASTERN_ADOULIN] =
        {
            ['Pudith'] =
            {
                onTrigger = function(player, npc)
                    return quest:progressEvent(3011)
                end,
            },

            onEventFinish =
            {
                [3011] = function(player, csid, option, npc)
                    if option == 1 then
                        quest:begin(player)
                    end
                end,
            },
        },
    },

    -- Section: Begin quest (Repeated)
    {
        check = function(player, status, vars)
            return player:hasCompletedQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.IT_SETS_MY_HEART_AFLUTTER) and
                player:hasCompletedQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.A_GOOD_PAIR_OF_CROCS) and
                player:hasCompletedQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.A_SHOT_IN_THE_DARK) and
                player:getCharVar('ADOULIN_FAME_QUEST_TRACKER') == 2
        end,

        [xi.zone.EASTERN_ADOULIN] =
        {
            ['Pudith'] =
            {
                onTrigger = function(player, npc)
                    return quest:progressEvent(3013)
                end,
            },

            onEventFinish =
            {
                [3013] = function(player, csid, option, npc)
                    player:delQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.A_SHOT_IN_THE_DARK)
                    quest:begin(player)
                end,
            },
        },
    },

    -- Section: Questing
    {
        check = function(player, status, vars)
            return status == xi.questStatus.QUEST_ACCEPTED
        end,

        [xi.zone.EASTERN_ADOULIN] =
        {
            ['Pudith'] =
            {
                onTrigger = function(player, npc)
                    return quest:event(3014)
                end,

                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.item.UMBRIL_OOZE) then
                        return quest:progressEvent(3012)
                    end
                end,
            },

            onEventFinish =
            {
                [3012] = function(player, csid, option, npc)
                    if quest:complete(player) then
                        player:confirmTrade()
                        player:setCharVar('ADOULIN_FAME_QUEST_TRACKER', 0)
                    end
                end,
            },
        },
    },

    -- Section: Completed quest
    {
        check = function(player, status, vars)
            return status == xi.questStatus.QUEST_COMPLETED
        end,

        [xi.zone.EASTERN_ADOULIN] =
        {
            ['Pudith'] =
            {
                onTrigger = function(player, npc)
                    return quest:event(3010)
                end,
            },
        },
    },
}

return quest
