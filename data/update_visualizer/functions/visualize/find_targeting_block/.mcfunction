#> update_visualizer:visualize/find_targeting_block/
#@within function update_visualizer:visualize/check_task_exists/

data modify storage : _ append value {}
  execute anchored eyes positioned ^ ^ ^ run function update_visualizer:visualize/find_targeting_block/loop
  execute unless data storage : _[-1].found{cond: 1b} run function update_visualizer:visualize/find_targeting_block/failed
data remove storage : _[-1]
