local focus = false
RegisterCommand("focus", function()
    
    focus = not focus
    if focus then
        SetNuiFocus(false)
    else
        SetNuiFocus(true, true)
    end
    
end)


CreateThread(function()

    while true do 
        local ped = PlayerPedId()
        local coordenada = GetEntityCoords(ped)
        SendNUIMessage({
            cordx = coordenada.x,
            cordy = coordenada.y,
            cordz = coordenada.z
        })
        Wait(1000)
    end
end)
