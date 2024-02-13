local ox_inventory = exports.ox_inventory
local armourType

RegisterCommand(Config.CommandRemoveVest, function()
    local playerPed = cache.ped
    local armour = GetPedArmour(playerPed)
    if armour == 0 then 
        SetPedComponentVariation(playerPed, 9, 0, 0, 0)
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
        TriggerServerEvent('pnt_bulletProofVest:removeIt', armour, armourType)
    end
end)

local function setArmour(data, armour)
    local playerPed = cache.ped
    local sex, drawableId, textureId, armourQuantity

    for bulletName, bulletData in pairs(Config.VestComponent) do 
        if bulletName == data.name then
            for k, v in pairs(bulletData) do
                if IsPedModel(playerPed, 'mp_m_freemode_01') then
                    if k == 'Male' then 
                        sex = k
                        drawableId = v.drawableId
                        textureId = v.textureId
                    end
                else
                    if k == 'Female' then 
                        sex = k
                        drawableId = v.drawableId
                        textureId = v.textureId
                    end
                end
                armourQuantity = bulletData.armourQuantity
            end
        end
    end

    SetPedComponentVariation(playerPed, 9, drawableId, textureId, 0)

    if not data.metadata.armour then 
        SetPedArmour(playerPed, armourQuantity + armour)
    else
        SetPedArmour(playerPed, armour + data.metadata.armour)
    end

    armourType = data.name
end

exports('bulletproofvest', function(data, slot)
    local playerPed = cache.ped 
    local armour = GetPedArmour(playerPed)
    if armour ~= 100 then
        ox_inventory:useItem(data, function(data)
            if data then 
                setArmour(data, armour)
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
                setArmour(data, armour)
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
                setArmour(data, armour)
            end
        end)
    else
        lib.notify({type = 'error', description = Strings['no_need_armour']})
    end
end)
