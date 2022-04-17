#> update_visualizer:_impl/sort/ascend/impl
#@within
#  function update_visualizer:_impl/sort/descend/impl
#  function update_visualizer:_impl/sort/*ascend

## descend[-1]とdescend[-2]をmergeしてascend[-1]に移動
### initialize
data modify storage : _[-1].ascend set value [[]]
### while descend.size >= 2
function update_visualizer:_impl/sort/ascend/loop
### if descend.size == 1
execute if data storage : _[-1].descend[-1][-1] run function update_visualizer:_impl/sort/ascend/move_rest

execute if data storage : _[-1].ascend[-2] run function update_visualizer:_impl/sort/descend/impl
