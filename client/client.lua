local ox_inventory = exports.ox_inventory


RegisterCommand(Config.CommandRemoveVest, function()
    local playerPed = cache.ped
    local armour = GetPedArmour(playerPed)
    if armour == 0 then 
        return lib.notify({type = 'error', description = Strings['no_armour']})
    end

    if lib.progressBar({
        duration = 3500,
        label = 'Removing Bullet Proof Vest',
        useWhileDead = false,
        canCancel = false,
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    }) then 
        SetPedArmour(playerPed, 0)
        TriggerServerEvent('pnt_bulletProofVest:removeIt', armour)
    end

end)


exports('bulletproofvest', function(data, slot)
    local playerPed = cache.ped 
    local armour = GetPedArmour(playerPed)

    if armour ~= 100 then
        ox_inventory:useItem(data, function(data)
            if data then 
                if not data.metadata.armour then 
                    SetPedArmour(playerPed, 100 + armour)
                else
                    SetPedArmour(playerPed, armour + data.metadata.armour)
                end
                
            end
        end)
    else
        lib.notify({type = 'error', description = Strings['no_need_armour']})
    end
end)