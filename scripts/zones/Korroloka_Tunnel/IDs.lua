-----------------------------------
-- Area: Korroloka Tunnel (173)
-----------------------------------
zones = zones or {}

zones[xi.zone.KORROLOKA_TUNNEL] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404,  -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING           = 6405,  -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET         = 6419,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        GEOMAGNETRON_ATTUNED          = 7012,  -- Your <keyitem> has been attuned to a geomagnetic fount in the corresponding locale.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7067,  -- You can't fish here.
        CONQUEST_BASE                 = 7167,  -- Tallying conquest results...
        MINING_IS_POSSIBLE_HERE       = 7326,  -- Mining is possible here if you have <item>.
        ENTERED_SPRING                = 7342,  -- The water in this spring is pleasant and tepid. This looks like a nice place to warm yourself up.
        LEFT_SPRING_EARLY             = 7343,  -- You are not warm enough yet. You will need to spend more time than that in the spring to get your body heated up.
        LEFT_SPRING_CLEAN             = 7344,  -- Your whole body is piping hot, and the smell of the Rafflesia pollen is gone!
        MORION_WORM_1                 = 7347,  -- It appears to be a hole made by some kind of animal. Fragments of iron ore are scattered around the area...
        FILL_FLASK                    = 7350,  -- You carefully draw the water stored in the clam into <keyitem>.
        STILL_LIGHT                   = 7351,  -- The flask still feels light...
        FLASK_FULL                    = 7352,  -- <item> is now full!
        CLAM_EMPTY                    = 7353,  -- The clam is empty.
        REGIME_REGISTERED             = 9475,  -- New training regime registered!
        PLAYER_OBTAINS_ITEM           = 10527, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 10528, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 10529, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 10530, -- You already possess that temporary item.
        NO_COMBINATION                = 10535, -- You were unable to enter a combination.
        COMMON_SENSE_SURVIVAL         = 10559, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        CARGO_CRAB_COLIN = GetFirstID('Cargo_Crab_Colin'),
        DAME_BLANCHE     = GetFirstID('Dame_Blanche'),
        FALCATUS_ARANEI  = GetFirstID('Falcatus_Aranei'),
        KORROLOKA_LEECH  = GetFirstID('Korroloka_Leech'),
        MORION_WORM      = GetFirstID('Morion_Worm'),
    },
    npc =
    {
        MORION_WORM_QM = GetFirstID('qm1'),
        EXCAVATION     = GetTableOfIDs('Excavation_Point'),
    },
}

return zones[xi.zone.KORROLOKA_TUNNEL]
