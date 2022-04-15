#> update_visualizer:handler/used.warped_fungus_on_a_stick
#@within tag/function player:used.warped_fungus_on_a_stick

execute if entity @s[scores={player_event.used_id=1}] run function update_visualizer:visualize/check_task_exists/
execute if entity @s[scores={player_event.used_id=2}] run function update_visualizer:task/force_next_step
