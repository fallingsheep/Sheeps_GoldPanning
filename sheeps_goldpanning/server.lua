local VorpCore = {}

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

Citizen.CreateThread(function()
    local _source = source
    Citizen.Wait(2000)
    VorpInv.RegisterUsableItem("goldpan", function(data)
            TriggerClientEvent('Sheeps_goldpanning:StartPaning', data.source)
    end)
end)

RegisterNetEvent("search")
AddEventHandler("search", function()
    local _source = source
    -- ensure random seed for random math
    -- from hails_herbs script 
    -- https://github.com/Hailey-Ross/hails_herbs/tree/main
    local playerCamRot = GetPlayerCameraRotation(source)
    local playerPingSeed = GetPlayerPing(source)
    local specialSauce = playerPingSeed / playerCamRot.x
    local fortyfours = 0.414444144 * playerCamRot.z + playerPingSeed
    local gameTimerSeed = GetGameTimer()
    local preSeeding = playerCamRot.x * gameTimerSeed * fortyfours
    local RandomSeed = preSeeding * specialSauce
    math.randomseed(RandomSeed)
    local chance =  math.random(1, 100)
    local randomIndex = math.random(#Config.item_normal)
    local randomItem = Config.item_normal[randomIndex]
    local randomIndex2 = math.random(#Config.item_valuable)
    local randomItem2 = Config.item_valuable[randomIndex]
    local randomIndex3 = math.random(#Config.item_rare)
    local randomItem3 = Config.item_rare[randomIndex]
    local randomIndex4 = math.random(#Config.item_very_rare)
    local randomItem4 = Config.item_very_rare[randomIndex]

    if chance >= Config.chance_nothing[1] and chance <= Config.chance_nothing[2] then
        TriggerClientEvent("vorp:TipBottom", _source, Config.gold_not_found, 6000)
    elseif chance >= Config.chance_normal[1] and chance <= Config.chance_normal[2] then
        GiveItem(_source, randomItem, Config.found_normal)
    elseif chance >= Config.chance_valuable[1] and chance <= Config.chance_valuable[2] then
        GiveItem(_source, randomItem2, Config.found_valuable)
    elseif chance >= Config.chance_rare[1] and chance <= Config.chance_rare[2] then
        GiveItem(_source, randomItem3, Config.found_rare)
    elseif chance >= Config.chance_very_rare[1] and chance <= Config.chance_very_rare[2] then
        GiveItem(_source, randomItem4, Config.chance_very_rare)
    else
        --fallback
        TriggerClientEvent("vorp:TipBottom", _source, Config.gold_not_found, 6000)
    end

end)

function GiveItem(source, item, message)
    VorpInv.addItem(source, item, 1)
    Wait(100)
    TriggerClientEvent("vorp:TipBottom", source, message, 6000)
end
