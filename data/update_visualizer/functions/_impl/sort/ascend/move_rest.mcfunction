#> update_visualizer:_impl/sort/ascend/move_rest
#@within
#  function update_visualizer:_impl/sort/ascend/move_rest
#  function update_visualizer:_impl/sort/ascend/shift
#  function update_visualizer:_impl/sort/ascend/impl
#  function update_visualizer:_impl/sort/ascend
#  function update_visualizer:_impl/sort/reverse_descend

data modify storage : _[-1].ascend[-1] append from storage : _[-1].descend[-1][-1]
data remove storage : _[-1].descend[-1][-1]
execute if data storage : _[-1].descend[-1][-1] run function update_visualizer:_impl/sort/ascend/move_rest
