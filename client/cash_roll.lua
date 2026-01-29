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


--[[lib.progressCircle({
        duration = 5000,
        label = 'Unpacking Ammo Box...',
        useWhileDead = false,
        position = 'bottom', -- Make sure 'position' is a valid option for your library
        canCancel = true,
        onFinish = function(cancelled)
            if not cancelled then
                print("Progress finished, attempting to trigger server event...")
                TriggerServerEvent('nexusammo:addAmmo', 30)
            else
                print("Progress was canceled.")
            end
        end,        
    })]]

--[[exports['progressbar']:Progress({
        name = 'picking_opium',
        duration = 5000, 
        label = 'Picking Raw opium...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = 'mini@repair',
            anim = 'fixing_a_player',
        },
    }, function(cancelled)
        if not cancelled then
            TriggerServerEvent('nexusammo:addAmmo', 30)
        end
    end)]]