#> update_visualizer:task/finalize
#@within
#  function update_visualizer:task/
#  function update_visualizer:task/force_exit

kill @e[type=marker,tag=update_visualizer]
data remove storage update_visualizer: task
