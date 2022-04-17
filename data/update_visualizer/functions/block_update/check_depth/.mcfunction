#> update_visualizer:block_update/check_depth/
#@within function update_visualizer:block_update/

execute if data storage update_visualizer: settings.max_depth run function update_visualizer:block_update/check_depth/max_depth
execute unless data storage update_visualizer: settings.max_depth run function update_visualizer:block_update/push_notifiers/
