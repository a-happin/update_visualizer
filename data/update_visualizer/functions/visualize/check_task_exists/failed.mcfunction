#> update_visualizer:visualize/check_task_exists/failed
#@within function update_visualizer:visualize/check_task_exists/

tellraw @s [{"text": "Error» ", "color": "red"}, "The visualize task has already started"]
playsound block.fire.extinguish master @s ~ ~ ~ 0.5 2 0.5
