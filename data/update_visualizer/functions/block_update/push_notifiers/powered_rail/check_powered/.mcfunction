#> update_visualizer:block_update/push_notifiers/powered_rail/check_powered/
#@within function update_visualizer:block_update/push_notifiers/

execute unless data storage update_visualizer: settings{strict_powered_check: 1b} run function update_visualizer:block_update/push_notifiers/powered_rail/shape/
execute if data storage update_visualizer: settings{strict_powered_check: 1b} if data storage update_visualizer: task.block.state{powered: 1b} if block ~ ~ ~ powered_rail[powered=true] run function update_visualizer:block_update/push_notifiers/powered_rail/shape/
execute if data storage update_visualizer: settings{strict_powered_check: 1b} if data storage update_visualizer: task.block.state{powered: 0b} if block ~ ~ ~ powered_rail[powered=false] run function update_visualizer:block_update/push_notifiers/powered_rail/shape/
