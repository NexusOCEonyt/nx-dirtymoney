local QBCore = exports['qb-core']:GetCoreObject()

exports('useCashRoll', function(source, item)
    TriggerEvent('nxDirtyMoney:useCashRoll', source)
end)

RegisterNetEvent('nxDirtyMoney:useCashRoll')
AddEventHandler('nxDirtyMoney:useCashRoll', function()
    local src = source

    if lib.progressCircle({
        label = 'Organizing Cash...',
        duration = 5000,
        position = 'bottom-middle',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true},
        anim = {
            dict = 'anim@mp_player_intuppersalsa_roll',
            clip = 'idle_a'
        },
    }) then
        TriggerServerEvent('nxDirtyMoney:addBand')
    end
end)
