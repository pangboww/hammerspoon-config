local caffeine = hs.menubar.new()

local function updateCaffeineDisplay(state)
    local result

    if state then
        caffeine:setIcon("caffeine-active.png")
        hs.alert("Caffeine enabled", 1)
    else
        caffeine:setIcon("caffeine-inactive.png")
        hs.alert("Caffeine disabled", 1)
    end
end

function ToggleCaffeine()
    updateCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

function RemoveCaffeine()
    caffeine:delete()
    caffeine = nil
end

if caffeine then
    caffeine:setClickCallback(ToggleCaffeine)
    updateCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end


hs.hotkey.bind(hyperCmd, "=", ToggleCaffeine)