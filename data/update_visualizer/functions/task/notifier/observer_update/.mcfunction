#> update_visualizer:task/notifier/observer_update/
#@within function update_visualizer:task/notifier/check_kind/

## check_kindを成功にする
data modify storage : _[-1].if.success set value 1b

execute positioned as @s run function update_visualizer:summon/notifier_marker/observer_update/
function update_visualizer:observer_update/
