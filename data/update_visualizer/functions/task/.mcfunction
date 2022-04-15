#> update_visualizer:task/
#@within function update_visualizer:tick

execute if data storage update_visualizer: task.notifiers[-1] run function update_visualizer:task/find_current_notifier/
execute unless data storage update_visualizer: task.notifiers[-1] run function update_visualizer:task/completed
