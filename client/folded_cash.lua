 local QBCore = exports['qb-core']:GetCoreObject()

exports('useFoldedCash', function(source, item)
    TriggerEvent('nxDirtyMoney:useFoldedCash', source)
end)

RegisterNetEvent('nxDirtyMoney:useFoldedCash')
AddEventHandler('nxDirtyMoney:useFoldedCash', function()
    local src = source

    if lib.progressCircle({
        label = 'Rolling Cash...',
        duration = 5000,
        position = 'bottom-middle',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true},
        anim = {
            dict = 'anim@mp_player_intuppersalsa_roll',
            clip = 'idle_a'
        }
    }) then
        TriggerServerEvent('nxDirtyMoney:addCashRoll')
    end
end)
