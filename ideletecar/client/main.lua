ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = GetPlayerPed(-1)
        if IsPedInAnyVehicle(playerPed, false) then
            if IsControlJustReleased(58, 58) then
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                ESX.ShowNotification("Sikeresen eltetted ezt a járművet!", "success", 3000)
                if DoesEntityExist(vehicle) then
                    DeleteVehicle(vehicle)
                end
            end
        end
    end
end)