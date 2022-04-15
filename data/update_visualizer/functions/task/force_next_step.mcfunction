#> update_visualizer:task/force_next_step
#@within function update_visualizer:handler/used.warped_fungus_on_a_stick

kill @e[type=falling_block,tag=update_visualizer.glowing_block]
playsound block.note_block.bit record @s ~ ~ ~ 0.5 1 0.5
schedule function update_visualizer:tick 1t replace
