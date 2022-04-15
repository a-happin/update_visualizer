#> update_visualizer:visualize/run/
#@within function update_visualizer:visualize/check_block/

data modify storage update_visualizer: task.block set value "activator_rail"
playsound entity.player.levelup master @s ~ ~ ~ 0.5 2 0.5
function update_visualizer:block_update/
execute if score $time update_visualizer matches 1.. run schedule function update_visualizer:tick 1t replace
