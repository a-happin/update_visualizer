#> update_visualizer:visualize/check_block/failed
#@within function update_visualizer:visualize/check_block/

tellraw @s [{"text": "Error» ", "color": "red"}, "update_visualizer» ", "Unknown block"]
playsound block.fire.extinguish master @s ~ ~ ~ 0.5 2 0.5
