-----------------------------------
-- Area: Grauberg_[S]
-----------------------------------
zones = zones or {}

zones[xi.zone.GRAUBERG_S] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404, -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING           = 6405, -- You are suddenly overcome with a sense of foreboding...
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7067, -- You can't fish here.
        A_SHIVER_RUNS_DOWN            = 7437, -- A shiver runs down your spine...
        ATTEND_TO_MORE_PRESSING       = 7438, -- Perhaps you should first attend to more pressing matters...
        CAMPAIGN_RESULTS_TALLIED      = 7604, -- Campaign results tallied.
        HARVESTING_IS_POSSIBLE_HERE   = 7705, -- Harvesting is possible here if you have <item>.
        SUITABLE_PLACE_TO_SOAK        = 8277, -- This seems to be a suitable place to soak <item>.
        MYSTERIOUS_COLUMN_ROTATES     = 8380, -- A mysterious column of floating stones rotates hypnotically before you.
        YOU_HAVE_RETRACED_RIVER       = 8405, -- You have retraced the river of memories back to the mission "Maiden of the Dusk".
        AIR_WARPED_AND_DISTORTED      = 8406, -- The air before you appears warped and distorted...
        COMMON_SENSE_SURVIVAL         = 9310, -- It appears that you have arrived at a new survival guide provided by the Servicemen's Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        KOTAN_KOR_KAMUY      = GetFirstID('Kotan-kor_Kamuy'),
        SCITALIS             = GetFirstID('Scitalis'),
        MIGRATORY_HIPPOGRYPH = GetFirstID('Migratory_Hippogryph'),
        VASILICERATOPS       = GetFirstID('Vasiliceratops'),
    },
    npc =
    {
        CAMPAIGN_NPC_OFFSET = GetFirstID('Ulaciont_RK'), -- San, Bas, Win, Flag +4, CA
        HARVESTING          = GetTableOfIDs('Harvesting_Point'),
        INDESCRIPT_MARKINGS = GetFirstID('Indescript_Markings'),
    },
}

return zones[xi.zone.GRAUBERG_S]
