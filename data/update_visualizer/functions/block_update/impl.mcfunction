#> update_visualizer:block_update/impl
#@within function update_visualizer:block_update/

execute if data storage update_visualizer: task{block: "activator_rail"} if block ~ ~ ~ activator_rail run function update_visualizer:block_update/activator_rail/
execute if data storage update_visualizer: task{block: "powered_rail"} if block ~ ~ ~ powered_rail run function update_visualizer:block_update/powered_rail/
