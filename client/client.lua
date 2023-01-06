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
        SetPedComponentVariation(playerPed, 9, 0, 0, 0)
        TriggerServerEvent('pnt_bulletProofVest:removeIt', armour)
    end

end)


exports('bulletproofvest', function(data, slot)
    local playerPed = cache.ped 
    local armour = GetPedArmour(playerPed)

    if armour ~= 100 then
        ox_inventory:useItem(data, function(data)
            if data then 
                if IsPedModel(playerPed, 'mp_m_freemode_01') then
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.bulletproofvest.Male.drawableId, Config.VestComponent.bulletproofvest.Male.textureId, 0)
                else
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.bulletproofvest.Female.drawableId, Config.VestComponent.bulletproofvest.Female.textureId, 0)
                end
                if not data.metadata.armour then 
                    SetPedArmour(playerPed, Config.VestComponent.bulletproofvest.armourQuantity + armour)
                else
                    SetPedArmour(playerPed, armour + data.metadata.armour)
                end
                
            end
        end)
    else
        lib.notify({type = 'error', description = Strings['no_need_armour']})
    end
end)


exports('mediumbulletproofvest', function(data, slot)
    local playerPed = cache.ped 
    local armour = GetPedArmour(playerPed)

    if armour ~= 100 then
        ox_inventory:useItem(data, function(data)
            if data then 
                if IsPedModel(playerPed, 'mp_m_freemode_01') then
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.mediumbulletproofvest.Male.drawableId, Config.VestComponent.mediumbulletproofvest.Male.textureId, 0)
                else
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.mediumbulletproofvest.Female.drawableId, Config.VestComponent.mediumbulletproofvest.Female.textureId, 0)
                end
                if not data.metadata.armour then 
                    SetPedArmour(playerPed, Config.VestComponent.mediumbulletproofvest.armourQuantity + armour)
                else
                    SetPedArmour(playerPed, armour + data.metadata.armour)
                end
                
            end
        end)
    else
        lib.notify({type = 'error', description = Strings['no_need_armour']})
    end
end)


exports('lowbulletproofvest', function(data, slot)
    local playerPed = cache.ped 
    local armour = GetPedArmour(playerPed)

    if armour ~= 100 then
        ox_inventory:useItem(data, function(data)
            if data then 
                if IsPedModel(playerPed, 'mp_m_freemode_01') then
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.lowbulletproofvest.Male.drawableId, Config.VestComponent.lowbulletproofvest.Male.textureId, 0)
                else
                    SetPedComponentVariation(playerPed, 9, Config.VestComponent.lowbulletproofvest.Female.drawableId, Config.VestComponent.lowbulletproofvest.Female.textureId, 0)
                end
                if not data.metadata.armour then 
                    SetPedArmour(playerPed, Config.VestComponent.lowbulletproofvest.armourQuantity + armour)
                else
                    SetPedArmour(playerPed, armour + data.metadata.armour)
                end
                
            end
        end)
    else
        lib.notify({type = 'error', description = Strings['no_need_armour']})
    end
end)