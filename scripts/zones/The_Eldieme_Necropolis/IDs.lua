-----------------------------------
-- Area: The Eldieme Necropolis (195)
-----------------------------------
zones = zones or {}

zones[xi.zone.THE_ELDIEME_NECROPOLIS] =
{
    text =
    {
        CONQUEST_BASE                    = 0,     -- Tallying conquest results...
        ITEM_CANNOT_BE_OBTAINED          = 6543,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                    = 6549,  -- Obtained: <item>.
        GIL_OBTAINED                     = 6550,  -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6552,  -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY          = 6563,  -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING              = 6564,  -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET            = 6578,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS              = 7160,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 7161,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                     = 7162,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        GEOMAGNETRON_ATTUNED             = 7171,  -- Your <keyitem> has been attuned to a geomagnetic fount in the corresponding locale.
        MEMBERS_LEVELS_ARE_RESTRICTED    = 7182,  -- Your party is unable to participate because certain members' levels are restricted.
        DEVICE_NOT_WORKING               = 7336,  -- The device is not working.
        SYS_OVERLOAD                     = 7345,  -- Warning! Sys...verload! Enterin...fety mode. ID eras...d.
        YOU_LOST_THE                     = 7350,  -- You lost the <item>.
        BRAZIER_OUT                      = 7358,  -- The brazier's flame is out. You can probably light it using <item>.
        BRAZIER_COOLDOWN                 = 7359,  -- The brazier's flame has completely burnt out. You can't relight it now...
        NOTHING_HAPPENED                 = 7360,  -- Nothing happened...
        BRAZIER_ACTIVE                   = 7361,  -- The brazier's flame continues to burn...
        SKULL_SIX_REMAIN                 = 7363,  -- An eerie voice echoes in your skull: (Six remain...)
        SKULL_FIVE_REMAIN                = 7364,  -- An eerie voice echoes in your skull: (Five remain...)
        SKULL_FOUR_REMAIN                = 7365,  -- An eerie voice echoes in your skull: (Four remain...)
        SKULL_THREE_REMAIN               = 7366,  -- An eerie voice echoes in your skull: (Three remain...)
        SKULL_TWO_REMAIN                 = 7367,  -- An eerie voice echoes in your skull: (Two remain...)
        SKULL_ONE_REMAIN                 = 7368,  -- An eerie voice echoes in your skull: (One remains...)
        SKULL_SPAWN                      = 7369,  -- An eerie voice echoes in your skull: (Know ye our power...)
        RETURN_RIBBON_TO_HER             = 7373,  -- You can hear a voice from somewhere. (...return...ribbon to...her...)
        THE_BRAZIER_IS_LIT               = 7387,  -- The brazier is lit.
        REFUSE_TO_LIGHT                  = 7388,  -- Unexpectedly, the <item> refuses to light.
        LANTERN_GOES_OUT                 = 7389,  -- For some strange reason, the light of the <item> goes out...
        THE_LIGHT_DIMLY                  = 7390,  -- The <item> lights dimly. It doesn't look like this will be effective yet.
        THE_LIGHT_HAS_INTENSIFIED        = 7391,  -- The light of the <item> has intensified.
        THE_LIGHT_IS_FULLY_LIT           = 7392,  -- The <item> is fully lit!
        SOLID_STONE                      = 7400,  -- This door is made of solid stone.
        CHEST_UNLOCKED                   = 7420,  -- You unlock the chest!
        SPIRIT_INCENSE_EMITS_PUTRID_ODOR = 7430,  -- The <item> emits a putrid odor and burns up. Your attempt this time has failed...
        SARCOPHAGUS_CANNOT_BE_OPENED     = 7447,  -- It is a stone sarcophagus with the lid sealed tight. It cannot be opened.
        SEEMS_TO_BE_THE_END              = 7575,  -- That seems to be the end of it.
        GIRL_BACK_TO_JEUNO               = 7587,  -- I'll take the little girl back to Jeuno. Take care.
        NOT_TIME_TO_SEARCH               = 7599,  -- Now doesn't seem to be the time to search here.
        PUT_TOGUETHER_TO_COMPLETE        = 7601,  -- You put the % you have discovered together to form a complete piece.
        PLAYER_OBTAINS_ITEM              = 7606,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM            = 7607,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM         = 7608,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP             = 7609,  -- You already possess that temporary item.
        NO_COMBINATION                   = 7614,  -- You were unable to enter a combination.
        REGIME_REGISTERED                = 9692,  -- New training regime registered!
        LEARNS_SPELL                     = 11610, -- <name> learns <spell>!
        UNCANNY_SENSATION                = 11612, -- You are assaulted by an uncanny sensation.
        COMMON_SENSE_SURVIVAL            = 11646, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },

    mob =
    {
        CWN_CYRFF           = GetFirstID('Cwn_Cyrff'),
        LICH_C_MAGNUS       = GetFirstID('Lich_C_Magnus'),
        YUM_KIMIL           = GetFirstID('Yum_Kimil'),
        STURM               = GetFirstID('Sturm'),
        TAIFUN              = GetFirstID('Taifun'),
        TROMBE              = GetFirstID('Trombe'),
        MIMIC               = GetFirstID('Mimic'),
        APPARATUS_ELEMENTAL = 17576271,
        NAMORODO            = GetFirstID('Namorodo'),
    },

    npc =
    {
        GATE_OFFSET        = GetFirstID('_5f1'),
        BRAZIER            = GetFirstID('Brazier'),
        TREASURE_CHEST     = GetFirstID('Treasure_Chest'),
        TREASURE_COFFER    = GetFirstID('Treasure_Coffer'),
        SARCOPHAGUS_OFFSET = GetFirstID('Sarcophagus'),
        CANDLE_OFFSET      = GetFirstID('_5fu'),
        QM1                = GetFirstID('qm1'),

        QM1_POS =
        {
            { -460.85, -1.5, 425.14 }, -- D-5.
            { -24.10, -9.303, 258.993 }, -- I-7.
            { -19.624, -1.631, 60.368 }, -- I-10.
            { 256.757, -20.489, 335.920 }, -- M-6.
        },
    },
}

return zones[xi.zone.THE_ELDIEME_NECROPOLIS]
