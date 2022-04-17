#> update_visualizer:tick
#@within
#  function update_visualizer:visualize/run/
#  function update_visualizer:task/force_next_step
#  function update_visualizer:task/force_exit
#  function update_visualizer:tick

scoreboard players remove $time update_visualizer 1
execute unless score $time update_visualizer matches 1.. run function update_visualizer:task/
execute if score $time update_visualizer matches 1.. run schedule function update_visualizer:tick 1t replace
