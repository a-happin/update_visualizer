#> update_visualizer:visualize/check_task_exists/
#@within function update_visualizer:handler/used.warped_fungus_on_a_stick

execute if data storage update_visualizer: task.notifiers[-1] run function update_visualizer:visualize/check_task_exists/failed
execute unless data storage update_visualizer: task.notifiers[-1] run function update_visualizer:visualize/find_targeting_block/
