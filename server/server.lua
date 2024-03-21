local ox_inventory = exports.ox_inventory

RegisterNetEvent('pnt_bulletProofVest:removeIt', function(armour, armourType)
    if ox_inventory:CanCarryItem(source, armourType or 'bulletproofvest', 1) then
        ox_inventory:AddItem(source, armourType or 'bulletproofvest', 1, {armour = armour, description = Strings['how_much_armour']:format(armour)})
    else
        TriggerClientEvent('ox_lib:notify', source, {description = Strings['cant_carry_more']})
    end
end)


AddEventHandler('playerDropped', function()
    local identifier = GetPlayerIdentifier(source, 0)
    identifier = string.gsub(identifier, "license:", "")
    local armour = GetPedArmour(GetPlayerPed(source))

    MySQL.query('SELECT * FROM bulletproof WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if #result > 0 then
            MySQL.update('UPDATE bulletproof SET quantity = @quantity WHERE identifier = @identifier', {
                ['@identifier'] = identifier,
                ['@quantity'] = armour
            })
        else
            MySQL.insert('INSERT INTO bulletproof (identifier, quantity) VALUES (@identifier, @quantity)', {
                ['@identifier'] = identifier,
                ['@quantity'] = armour
            })
        end
    end)
end)

AddEventHandler('playerSpawned', function()
    local identifier = GetPlayerIdentifier(source, 0)
    identifier = identifier:gsub("license:", "")

    MySQL.query('SELECT quantity FROM bulletproof WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if #result > 0 then
            local quantity = result[1].quantity
            if quantity > 0 then
                SetPedArmour(GetPlayerPed(source), quantity)
            end
        end
    end)
end)
