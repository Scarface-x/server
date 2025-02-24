-----------------------------------
-- Area: Batallia Downs
--  Mob: Stalking Sapling
-- Note: PH for Tottering Toby
-----------------------------------
local ID = zones[xi.zone.BATALLIA_DOWNS]
-----------------------------------
---@type TMobEntity
local entity = {}

local totteringPHTable =
{
    [ID.mob.TOTTERING_TOBY - 27] = ID.mob.TOTTERING_TOBY, -- -194.234 -18.485 132.208
}

local totteringSpawnPoints =
{
    { x = -248.150, y = -12.502, z = 174.407 },
    { x = -194.234, y = -18.485, z = 132.208 },
    { x = -259.618, y = -5.921,  z = 251.595 },
    { x = -236.333, y = -7.819,  z = 343.322 },
    { x = -149.552, y = -6.521,  z = 206.100 },
    { x = -250.759, y = -7.663,  z = 201.289 },
    { x = -170.955, y = 0.347,   z = 237.283 },
    { x = -151.124, y = 0.236,   z = 232.740 },
    { x = -191.540, y = -0.064,  z = 257.780 },
    { x = -255.948, y = -7.945,  z = 180.664 },
    { x = -129.344, y = 0.075,   z = 218.830 },
    { x = -239.064, y = -14.061, z = 110.444 },
    { x = -228.020, y = -5.112,  z = 309.864 },
    { x = -231.086, y = -15.796, z = 111.698 },
    { x = -265.481, y = -8.166,  z = 217.296 },
    { x = -230.377, y = -11.414, z = 179.846 },
    { x = -199.639, y = 0.000,   z = 240.702 },
    { x = -245.528, y = -14.424, z = 162.956 },
    { x = -226.245, y = -3.617,  z = 302.039 },
    { x = -146.838, y = -6.139,  z = 178.254 },
    { x = -212.698, y = -20.333, z = 154.443 },
    { x = -209.148, y = -21.169, z = 136.423 },
    { x = -198.995, y = -0.009,  z = 276.150 },
    { x = -228.923, y = -9.250,  z = 216.270 },
    { x = -132.889, y = -0.379,  z = 225.931 },
    { x = -126.988, y = -0.724,  z = 211.075 },
    { x = -192.185, y = -0.249,  z = 229.950 },
    { x = -223.021, y = -5.225,  z = 235.076 },
    { x = -181.608, y = -2.902,  z = 224.920 },
    { x = -143.123, y = -0.435,  z = 231.413 },
    { x = -141.794, y = -6.182,  z = 167.545 },
    { x = -163.012, y = -0.072,  z = 235.474 },
    { x = -244.147, y = -7.159,  z = 266.756 },
    { x = -272.561, y = -7.431,  z = 175.465 },
    { x = -212.000, y = -7.604,  z = 198.146 },
    { x = -216.412, y = -20.437, z = 125.398 },
    { x = -246.228, y = -16.967, z = 142.903 },
    { x = -224.556, y = -20.334, z = 125.018 },
    { x = -237.143, y = -8.000,  z = 280.262 },
    { x = -280.154, y = -8.011,  z = 204.820 },
    { x = -164.401, y = -5.626,  z = 218.126 },
    { x = -200.540, y = -0.243,  z = 234.106 },
    { x = -184.480, y = -8.312,  z = 179.873 },
    { x = -245.174, y = -7.011,  z = 258.708 },
    { x = -211.023, y = -17.196, z = 115.028 },
    { x = -265.187, y = -8.055,  z = 173.233 },
    { x = -229.306, y = -6.949,  z = 276.400 },
    { x = -191.986, y = 0.247,   z = 249.832 },
    { x = -174.207, y = -3.968,  z = 221.750 },
    { x = -246.893, y = -7.763,  z = 208.077 },
}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 72, 1, xi.regime.type.FIELDS)
    xi.regime.checkRegime(player, mob, 73, 1, xi.regime.type.FIELDS)
end

entity.onMobDespawn = function(mob)
    local params = { }
    params.spawnPoints = totteringSpawnPoints
    xi.mob.phOnDespawn(mob, totteringPHTable, 20, 3600, params) -- 1 hour
end

return entity
