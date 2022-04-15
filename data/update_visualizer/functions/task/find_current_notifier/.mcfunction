#> update_visualizer:task/find_current_notifier/
#@within
#  function update_visualizer:task/
#  function update_visualizer:task/find_current_notifier/

data modify storage : _ append value {}
  execute store result score $current update_visualizer.notifier.id run data get storage update_visualizer: task.notifiers[-1]
  execute as @e[type=marker,tag=update_visualizer.notifier] if score @s update_visualizer.notifier.id = $current update_visualizer.notifier.id at @s run function update_visualizer:task/notifier/

  execute unless data storage : _[-1].if{success: 1b} run function update_visualizer:task/find_current_notifier/failed
data remove storage : _[-1]

## 終わってなかったらループ
execute unless data storage update_visualizer: task{done: 1b} if data storage update_visualizer: task.notifiers[-1] run function update_visualizer:task/find_current_notifier/
