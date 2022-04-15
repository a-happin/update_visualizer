#> update_visualizer:task/notifier/check_duplicate/observer_update/
#@within function update_visualizer:task/notifier/check_kind/

## check_kindを成功にする
data modify storage : _[-1].if.success set value 1b

execute if entity @e[type=marker,tag=update_visualizer.observer_updated,distance=..0.01] run function update_visualizer:task/notifier/check_duplicate/observer_update/failed
execute unless entity @e[type=marker,tag=update_visualizer.observer_updated,distance=..0.01] run function update_visualizer:task/notifier/observer_update/
