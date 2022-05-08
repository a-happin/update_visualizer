#> update_visualizer:_impl/sort/descend/impl
#@within
#  function update_visualizer:_impl/sort/ascend/impl
#  function update_visualizer:_impl/sort/*descend

## ascend[-1]とascend[-2]をmergeしてdescend[-1]に移動
### while ascend.size >= 2
function update_visualizer:_impl/sort/descend/loop
### if ascend.size == 1
execute if data storage : _[-1].ascend[-1][-1] run function update_visualizer:_impl/sort/descend/move_rest
### if ascend == [] => ascend = [[]]
execute unless data storage : _[-1].ascend[-1] run data modify storage : _[-1].ascend append value []

execute if data storage : _[-1].descend[-2] run function update_visualizer:_impl/sort/ascend/impl
