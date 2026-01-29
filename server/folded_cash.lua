QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('nxDirtyMoney:addCashRoll', function()
    local src = source
    local hasItem = exports.ox_inventory:Search(src, 'count', 'folded_cash')

    if hasItem >= 10 then
        exports.ox_inventory:RemoveItem(src, 'folded_cash', 10)
        exports.ox_inventory:AddItem(src, 'black_money', 1)
    else
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'Error',
            description = 'Not enough folded cash!',
            type = 'error',
            position = 'center-right',
        })
    end
end)
