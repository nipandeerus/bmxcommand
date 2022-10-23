RegisterCommand('spawnbmx', function() -- spawns the bmx
    ExecuteCommand("e idle3")
    Wait(3000)
    ClearPedTasksImmediately(PlayerPedId())

    local vehiclemodel = 'bmx'
    RequestModel(vehiclemodel)
    while not HasModelLoaded(vehiclemodel) do
        Wait(500)
    end
    vehicle = CreateVehicle(vehiclemodel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), false, true)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
end)		
    
RegisterCommand('deletebmx', function() -- deletes the bmx
    DeleteEntity(vehicle)
end)	