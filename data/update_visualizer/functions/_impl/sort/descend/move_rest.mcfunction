#> update_visualizer:_impl/sort/descend/move_rest
#@within
#  function update_visualizer:_impl/sort/descend/move_rest
#  function update_visualizer:_impl/sort/descend/shift
#  function update_visualizer:_impl/sort/descend/impl
#  function update_visualizer:_impl/sort/descend
#  function update_visualizer:_impl/sort/reverse_ascend

data modify storage : _[-1].descend[-1] append from storage : _[-1].ascend[-1][-1]
data remove storage : _[-1].ascend[-1][-1]
execute if data storage : _[-1].ascend[-1][-1] run function update_visualizer:_impl/sort/descend/move_rest
