#> update_visualizer:task/notifier/block_update/
#@within function update_visualizer:task/notifier/check_duplicate/block_update/

execute positioned as @s run function update_visualizer:summon/notifier_marker/block_update/
function update_visualizer:block_update/
data modify storage update_visualizer: task.done set value 1b
