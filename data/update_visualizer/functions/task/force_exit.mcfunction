#> update_visualizer:task/force_exit
#@within function update_visualizer:handler/used.warped_fungus_on_a_stick

kill @e[type=falling_block,tag=update_visualizer.glowing_block]
function update_visualizer:task/finalize
playsound block.beacon.deactivate master @s ~ ~ ~ 0.5 2 0.5
