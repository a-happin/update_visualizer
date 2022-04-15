#> update_visualizer:task/find_current_notifier/failed
#@within function update_visualizer:task/find_current_notifier/

tellraw @a [{"text": "Error» ", "color": "red"}, "Failed to find current notifier (id = ", {"storage": "update_visualizer:", "nbt": "task.notifiers[-1]"}, ")"]
data remove storage update_visualizer: task.notifiers[-1]
