#> update_visualizer:block_update/push_notifiers/redstone_wire/check_powered/
#@within function update_visualizer:block_update/push_notifiers/

execute unless data storage update_visualizer: settings{strict_powered_check: 1b} run function update_visualizer:block_update/push_notifiers/redstone_wire/
execute if data storage update_visualizer: settings{strict_powered_check: 1b} if data storage update_visualizer: task.block.state{powered: 0b} if block ~ ~ ~ redstone_wire[power=0] run function update_visualizer:block_update/push_notifiers/redstone_wire/
execute if data storage update_visualizer: settings{strict_powered_check: 1b} if data storage update_visualizer: task.block.state{powered: 1b} unless block ~ ~ ~ redstone_wire[power=0] run function update_visualizer:block_update/push_notifiers/redstone_wire/
