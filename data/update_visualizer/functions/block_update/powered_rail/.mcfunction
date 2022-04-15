#> update_visualizer:block_update/powered_rail/
#@within function update_visualizer:block_update/impl

execute if predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/powered_rail/horizontal
execute unless predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/powered_rail/ascending

