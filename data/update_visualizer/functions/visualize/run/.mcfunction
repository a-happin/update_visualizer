#> update_visualizer:visualize/run/
#@within function update_visualizer:visualize/find_targeting_block/loop

data modify storage : _[-1].found.cond set value 1b

execute if block ~ ~ ~ activator_rail run data modify storage update_visualizer: task.block.id set value "activator_rail"
execute if block ~ ~ ~ powered_rail run data modify storage update_visualizer: task.block.id set value "powered_rail"
execute if block ~ ~ ~ redstone_wire run data modify storage update_visualizer: task.block.id set value "redstone_wire"
execute if block ~ ~ ~ #update_visualizer:block[powered=false] run data modify storage update_visualizer: task.block.state.powered set value 0b
execute if block ~ ~ ~ #update_visualizer:block[powered=true] run data modify storage update_visualizer: task.block.state.powered set value 1b
execute if block ~ ~ ~ redstone_wire[power=0] run data modify storage update_visualizer: task.block.state.powered set value 0b
execute if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run data modify storage update_visualizer: task.block.state.powered set value 1b

playsound entity.player.levelup master @s ~ ~ ~ 0.5 2 0.5
function update_visualizer:block_update/
execute if score $time update_visualizer matches 1.. run schedule function update_visualizer:tick 1t replace
