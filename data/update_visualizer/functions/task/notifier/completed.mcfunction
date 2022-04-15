#> update_visualizer:task/notifier/completed
#@within function update_visualizer:task/notifier/

## pop
data remove storage update_visualizer: task.notifiers[-1]
kill @s
