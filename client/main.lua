local ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:setMoneyDisplay')
AddEventHandler('esx:setMoneyDisplay', function(money, bank)
    SendNUIMessage({
        type = 'updateMoneyDisplay',
        money = money,
        bank = bank
    })
end)

Citizen.CreateThread(function()
    while true do
        local playerMoney = ESX.GetPlayerData().money
        local playerBank = ESX.GetPlayerData().bank
        TriggerEvent('esx:setMoneyDisplay', playerMoney, playerBank)
        Citizen.Wait(1000) 
    end
end)
