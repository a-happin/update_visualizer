#> update_visualizer:_impl/sort/ascend/loop
#@within
#  function update_visualizer:_impl/sort/ascend/impl
#  function update_visualizer:_impl/sort/ascend/loop

## get
execute store result score $1 _sort run data get storage : _[-1].descend[-1][-1].hash
execute store result score $2 _sort run data get storage : _[-1].descend[-2][-1].hash

## append dummy
execute if score $1 _sort <= $2 _sort run data modify storage : _[-1].descend append value []
  ## move
  data modify storage : _[-1].ascend[-1] append from storage : _[-1].descend[-2][-1]
  data remove storage : _[-1].descend[-2][-1]

  ## is_empty => shift
  execute unless data storage : _[-1].descend[-2][-1] run function update_visualizer:_impl/sort/ascend/shift
execute if score $1 _sort <= $2 _sort run data remove storage : _[-1].descend[-1]

## while descend.size >= 2
execute if data storage : _[-1].descend[-2] run function update_visualizer:_impl/sort/ascend/loop
