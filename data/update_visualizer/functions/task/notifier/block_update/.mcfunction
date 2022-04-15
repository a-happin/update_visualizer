#> update_visualizer:task/notifier/block_update/
#@within function update_visualizer:task/notifier/check_kind/

## check_kindを成功にする
data modify storage : _[-1].if.success set value 1b

execute positioned as @s run function update_visualizer:summon/notifier_marker/block_update/
function update_visualizer:block_update/
