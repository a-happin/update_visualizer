#> update_visualizer:_impl/sort/descend/setup
#@within
#  function update_visualizer:_impl/sort/descend/setup
#  function update_visualizer:_impl/sort/*ascend

# descendに降順になるように移動
# example:
#  list = [15, 20, 3, 50, 21, 5, 33, 86, 1, 9]
# descend = [[9, 1], [86, 33, 5], [21], [50, 3], [20, 15]]

execute store result score $1 _sort run data get storage : _[-2].list[-1].hash
execute if score $1 _sort > $2 _sort run data modify storage : _[-1].descend append value []
data modify storage : _[-1].descend[-1] append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
scoreboard players operation $2 _sort = $1 _sort
execute if data storage : _[-2].list[-1] run function update_visualizer:_impl/sort/descend/setup
