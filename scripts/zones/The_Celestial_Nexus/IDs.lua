-----------------------------------
-- Area: The_Celestial_Nexus
-----------------------------------
zones = zones or {}

zones[xi.zone.THE_CELESTIAL_NEXUS] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7067, -- Tallying conquest results...
        MEMBERS_OF_YOUR_PARTY         = 7537, -- Currently, <number> members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7538, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7540, -- The time limit for this battle is <number> minutes.
        PARTY_MEMBERS_HAVE_FALLEN     = 7576, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7583, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        ENTERING_THE_BATTLEFIELD_FOR  = 7604, -- Entering the battlefield for [The Celestial Nexus/The Celestial Nexus/Crystal Paradise]!
    },
    mob =
    {
        EALDNARCHE = GetFirstID('Ealdnarche'),
    },
    npc =
    {
    },
}

return zones[xi.zone.THE_CELESTIAL_NEXUS]
