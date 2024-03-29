ESX = exports['es_extended']:getSharedObject() -- ESX-Bibliothek

local screenWidth, screenHeight = GetActiveScreenResolution()

function DrawMoney()
    local money = ESX.GetPlayerData().money
    
    local formattedMoney = "$: " .. money
    
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.45, 0.45)
    SetTextColour(185, 185, 185, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(formattedMoney)
    
    DrawText(screenWidth - 0.03, 0.03)
end

function DrawBankMoney()
    local bankMoney = ESX.GetPlayerData().bank
    
    local formattedBankMoney = "🏦: " .. bankMoney
    
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.45, 0.45)
    SetTextColour(185, 185, 185, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(formattedBankMoney)
    
    DrawText(screenWidth - 0.03, 0.07)
end

Citizen.CreateThread(function()
    while true do
        DrawMoney()
        
        DrawBankMoney()
        
        Citizen.Wait(0)
    end
end)
