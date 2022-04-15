#> update_visualizer:visualize/check_task_exists/failed
#@within function update_visualizer:visualize/check_task_exists/

tellraw @s [{"text": "Error» ", "color": "red"}, "すでにタスクを実行中です"]
playsound block.fire.extinguish master @s ~ ~ ~ 0.5 2 0.5
