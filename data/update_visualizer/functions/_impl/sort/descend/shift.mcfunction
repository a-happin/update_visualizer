#> update_visualizer:_impl/sort/descend/shift
#@within function update_visualizer:_impl/sort/descend/loop

##     if ascend[-1][-1] => move_rest      -> remove -> remove
## unless ascend[-1][-1] => move_rest(nop) -> remove -> remove -> move_rest

execute if data storage : _[-1].ascend[-1][-1] run function update_visualizer:_impl/sort/descend/move_rest
data remove storage : _[-1].ascend[-1]
data remove storage : _[-1].ascend[-1]
execute if score $1 _sort >= $2 _sort if data storage : _[-1].ascend[-1][-1] run function update_visualizer:_impl/sort/descend/move_rest

## まだ要素が残っていたらappend
execute if data storage : _[-1].ascend[0][-1] run data modify storage : _[-1].descend append value []
