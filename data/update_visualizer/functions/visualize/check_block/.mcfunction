#> update_visualizer:visualize/check_block/
#@within function update_visualizer:visualize/find_targeting_block/loop

data modify storage : _[-1].found.cond set value 1b
execute if block ~ ~ ~ #update_visualizer:block align xyz run function update_visualizer:visualize/run/
execute unless block ~ ~ ~ #update_visualizer:block run function update_visualizer:visualize/check_block/failed
