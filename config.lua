Config = {}

Config.CheckScriptUpdates   = true                  -- Check for updates on github
Config.OpenCommand          = 'daily-bonus'         -- Command to open the menu
Config.TimeToClaim          = {
    hours = 24,                                      -- Hours to claim the reward
    minutes = 0,                                    -- Minutes to claim the reward
    seconds = 0,                                    -- Seconds to claim the reward
}
Config.AnimationDuration    = 12                    -- Time in seconds to spin the roulette, more the items more time is reccomended
Config.SellType             = "bank"                -- Type of reward to sell, cash or bank
Config.WeaponAmmo           = 100                   -- Ammo to give with the weapon
Config.CarParkingSpawn      = "SanAndreasAvenue"    -- Garage to spawn the car (SanAndreasAvenue name not working with QBCore, check your garage script config)

-- type: vehicle, item, cash, bank, weapon
-- quantity: only for items, how many items to give
Config.RouletteData = {
    [0] = {
        id = 0,
        type = "vehicle",
        model = "zentorno",
        rarity = "legendary",
        img = '/html/img/zentorno.png',
        name = "ZENTORNO",
        sell = 600000
    },
    [1] = {
        id = 1,
        type = "item",
        model = "weapon_dbshotgun",
        rarity = "epic",
        img = '/html/img/weapon_sawoff.png',
        name = "Canon scié",
        sell = 5000
    },
    [2] = {
        id = 2,
        rarity = "epic",
        type = "bank",
        model = "20000",
        img = '/html/img/creditCard.png',
        name = "$20000 Bank",
        sell = 20000
    },
    [3] = {
        id = 3,
        rarity = "rare",
        type = "weapon",
        model = "weapon_stungun",
        img = '/html/img/WEAPON_STUNGUN.png',
        name = "Taser",
        sell = 3500
    },
    [4] = {
        id = 4,
        rarity = "rare",
        type = "bank",
        model = 12000,
        img = '/html/img/creditCard.png',
        name = "$12000 Bank",
        sell = 12000
    },
    [5] = {
        id = 5,
        rarity = "rare",
        type = "cash",
        model = 7500,
        img = '/html/img/cash.png',
        name = "$7500 Cash",
        sell = 7500
    },
    [6] = {
        id = 6,
        rarity = "common",
        type = "item",
        model = "cola",
        img = '/html/img/cola.png',
        name = "eCola",
        sell = 50,
		quantity = 6
    },
    [7] = {
        id = 7,
        rarity = "common",
        type = "cash",
        model = 2000,
        img = '/html/img/cash.png',
        name = "$2000 Cash",
        sell = 2000
    },
    [8] = {
        id = 8,
        rarity = "common",
        type = "item",
        model = "medikit",
        img = '/html/img/medikit.png',
        name = "Medikit",
        sell = 120,
		quantity = 4
    },
    [9] = {
        id = 9,
        rarity = "commun",
        type = "vehicle",
        model = "scorcher",
        img = '/html/img/vespa.webp',
        name = "VTT",
        sell = 1000
    },
 }

Config.RarityProbability = {
    legendary = 0.04,
    epic = 0.08,
    rare = 0.28,
    common = 0.60
}

-- === TEXT ===
Config.Text = {
    ['initialized'] = "Bonus quotidien initialisé",
    ['item_sold'] = "Vous avez vendu l'article pour ",
    ['item_collected'] = "Vous avez gagné l'article"
}

Config.Notify = function(text, type)
    -- ESX
    ESX.ShowNotification(text, type, 3000)

    -- QBCore
    -- QBCore.Functions.Notify(text, type, 3000)
end
