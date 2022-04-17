#> update_visualizer:load
#@within tag/function load

#>
#@private
#declare tag/function load_once
function #load_once

#>
#@within * update_visualizer:**
  scoreboard objectives add update_visualizer dummy
  scoreboard objectives add update_visualizer.notifier.id dummy

  team add update_visualizer.block_update
  team modify update_visualizer.block_update color gold
  team add update_visualizer.observer_update
  team modify update_visualizer.observer_update color aqua

## integral constants
scoreboard players set #16 update_visualizer 16
scoreboard players set #65536 update_visualizer 65536


tellraw @a [{"text": "Debug» ", "color": "green"}, "Datapack Loaded."]
