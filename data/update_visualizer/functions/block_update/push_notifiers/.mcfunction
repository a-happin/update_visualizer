#> update_visualizer:block_update/push_notifiers/
#@within function update_visualizer:block_update/

summon marker ~ ~ ~ {Tags: ["update_visualizer", "update_visualizer.block_updated"]}

data modify storage : _ append value {}
  execute if data storage update_visualizer: task{block: "activator_rail"} if block ~ ~ ~ activator_rail run function update_visualizer:block_update/push_notifiers/activator_rail/
  execute if data storage update_visualizer: task{block: "powered_rail"} if block ~ ~ ~ powered_rail run function update_visualizer:block_update/push_notifiers/powered_rail/
  execute if data storage update_visualizer: task{block: "redstone_wire"} if block ~ ~ ~ redstone_wire run function update_visualizer:block_update/push_notifiers/redstone_wire/
data remove storage : _[-1]