#> update_visualizer:task/notifier/observer_update/
#@within function update_visualizer:task/notifier/check_duplicate/observer_update/

execute positioned as @s run function update_visualizer:summon/notifier_marker/observer_update/
function update_visualizer:observer_update/
data modify storage update_visualizer: task.done set value 1b
