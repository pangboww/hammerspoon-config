hs.loadSpoon("WindowScreenLeftAndRight")
hs.loadSpoon("WindowHalfsAndThirds")


require "modules/config"
require "modules/caffeine"
require "modules/window"


function ReloadConfiguration()
  RemoveCaffeine()
  hs.reload()
end

function ShowDateAndTime()
  hs.alert(os.date("It's %R on %e %B %G"), 2)
end



hs.hotkey.bind(hyperCmd, "-", ShowDateAndTime)
hs.hotkey.bind(hyperCmd, "r", ReloadConfiguration)


hs.alert("Hammerspoon config loaded", 1)
