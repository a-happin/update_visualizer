#> update_visualizer:block_update/check_depth/max_depth
#@within function update_visualizer:block_update/check_depth/

execute store result score $ update_visualizer.depth run data get storage update_visualizer: settings.max_depth
execute unless score $ update_visualizer.depth <= @s update_visualizer.depth run function update_visualizer:block_update/push_notifiers/
