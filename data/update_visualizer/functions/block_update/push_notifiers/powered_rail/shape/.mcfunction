#> update_visualizer:block_update/push_notifiers/powered_rail/shape/
#@within function update_visualizer:block_update/push_notifiers/powered_rail/check_powered/

execute if predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/push_notifiers/powered_rail/shape/horizontal
execute unless predicate update_visualizer:is_block/horizontal_rail run function update_visualizer:block_update/push_notifiers/powered_rail/shape/ascending

function update_visualizer:block_update/push_notifiers/commit
