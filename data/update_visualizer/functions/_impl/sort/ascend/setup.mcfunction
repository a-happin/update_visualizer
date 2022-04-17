#> update_visualizer:_impl/sort/ascend/setup
#@within
#  function update_visualizer:_impl/sort/ascend/setup
#  function update_visualizer:_impl/sort/*descend

# ascendに昇順になるように移動

execute store result score $1 _sort run data get storage : _[-2].list[-1].hash
execute if score $1 _sort < $2 _sort run data modify storage : _[-1].ascend append value []
data modify storage : _[-1].ascend[-1] append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
scoreboard players operation $2 _sort = $1 _sort
execute if data storage : _[-2].list[-1] run function update_visualizer:_impl/sort/ascend/setup
