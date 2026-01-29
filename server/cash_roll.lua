QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('nxDirtyMoney:addBand', function()
    local src = source
    local blackMoneyCount = exports.ox_inventory:Search(src, 'count', 'black_money')

    if blackMoneyCount >= 20 then
        exports.ox_inventory:RemoveItem(src, 'black_money', 20)
        exports.ox_inventory:AddItem(src, 'cash_band', 1)
    else
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'Error',
            description = 'Not enough Cash Rolls!',
            type = 'error',
            position = 'center-right',
        })
    end
end)
