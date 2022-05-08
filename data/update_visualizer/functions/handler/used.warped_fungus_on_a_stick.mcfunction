#> update_visualizer:handler/used.warped_fungus_on_a_stick
#@within tag/function player:used.warped_fungus_on_a_stick

execute if data storage : _[-1].UsedItem.tag{update_visualizer: "visualize"} run function update_visualizer:visualize/check_task_exists/
execute if data storage : _[-1].UsedItem.tag{update_visualizer: "next_step"} run function update_visualizer:task/force_next_step
execute if data storage : _[-1].UsedItem.tag{update_visualizer: "exit"} run function update_visualizer:task/force_exit
