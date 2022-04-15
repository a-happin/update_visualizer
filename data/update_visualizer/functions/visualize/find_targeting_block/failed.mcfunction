#> update_visualizer:visualize/find_targeting_block/failed
#@within function update_visualizer:visualize/find_targeting_block/

tellraw @s [{"text": "Error» ", "color": "red"}, "update_visualizer» ", "Not found block"]
playsound block.fire.extinguish master @s ~ ~ ~ 0.5 2 0.5
