#> update_visualizer:block_update/push_notifiers/
#@within function update_visualizer:block_update/check_depth/*

summon marker ~ ~ ~ {Tags: ["update_visualizer", "update_visualizer.block_updated"]}

data modify storage : _ append value {}
  execute store result storage : _[-1].depth int 1 run scoreboard players add @s update_visualizer.depth 1
  scoreboard players remove @s update_visualizer.depth 1

  execute if data storage update_visualizer: task.block{id: "activator_rail"} if block ~ ~ ~ activator_rail run function update_visualizer:block_update/push_notifiers/activator_rail/check_powered/
  execute if data storage update_visualizer: task.block{id: "powered_rail"} if block ~ ~ ~ powered_rail run function update_visualizer:block_update/push_notifiers/powered_rail/check_powered/
  execute if data storage update_visualizer: task.block{id: "redstone_wire"} if block ~ ~ ~ redstone_wire run function update_visualizer:block_update/push_notifiers/redstone_wire/check_powered/
data remove storage : _[-1]
