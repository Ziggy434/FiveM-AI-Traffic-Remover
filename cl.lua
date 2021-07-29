
-- change these to your liking :) (Ped frequency is the AI's walking Etc. and Traffic freq is the ammount of parked or driving vehicles)
local config = {
    pedFrequency = 1.0,
    trafficFrequency = 0.5
}


Citizen.CreateThread(funtion()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)


        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end
end)
