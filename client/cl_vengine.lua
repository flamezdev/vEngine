-- Configuration

-- local button = 113 -- 167 (F6 by default) | 113 (G) (L3)
local defaultKeybind = 'G' -- G by default
local commandEnabled = true -- (false by default) If you set this to true, typing "/eng" in chat will also toggle your engine.

-- You're all set now!


-- Code, no need to modify this, unless you know what you're doing or you want to fuck shit up.
-- No support will be provided if you modify this part below.

Citizen.CreateThread(function()
    if commandEnabled then
        RegisterCommand('eng', function() 
            toggleEngine()
        end, false)
        RegisterKeyMapping('eng', 'Toggle Engine', 'keyboard', defaultKeybind)
    end
    -- while true do
    --     Citizen.Wait(0)
    --     local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        
    --     if (IsControlJustReleased(0, button) or IsDisabledControlJustReleased(0, button)) and vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
    --         toggleEngine()
    --     end
        
    -- end
end)

Citizen.CreateThread(function()
    if commandEnabled then
        RegisterCommand('engine', function() 
            toggleEngine()
        end, false)
    end
    -- while true do
    --     Citizen.Wait(0)
    --     local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        
    --     if (IsControlJustReleased(0, button) or IsDisabledControlJustReleased(0, button)) and vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
    --         toggleEngine()
    --     end
        
    -- end
end)

function toggleEngine()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local heli = IsPedInAnyHeli(PlayerPedId())
    local plane = IsPedInAnyPlane(PlayerPedId())
    if vehicle ~= nil and vehicle ~= 0 and heli ~= true and plane ~= true and GetPedInVehicleSeat(vehicle, 0) then
        SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
    -- elseif heli or plane then
    end
end
