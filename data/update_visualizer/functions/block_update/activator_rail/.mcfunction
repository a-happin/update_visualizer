#> update_visualizer:block_update/activator_rail/
#@within function update_visualizer:block_update/

execute if predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/activator_rail/horizontal
execute unless predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/activator_rail/ascending
