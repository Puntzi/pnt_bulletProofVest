local ox_inventory = exports.ox_inventory

RegisterNetEvent('pnt_bulletProofVest:removeIt', function(armour)
    if ox_inventory:CanCarryItem(source, 'bulletproofvest', 1) then
        ox_inventory:AddItem(source, 'bulletproofvest', 1, {armour = armour, description = Strings['how_much_armour']:format(armour)})
    else
        TriggerClientEvent('ox_lib:notify', source, {description = Strings['cant_carry_more']})
    end
end)