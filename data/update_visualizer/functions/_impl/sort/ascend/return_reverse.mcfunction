#> update_visualizer:_impl/sort/ascend/return_reverse
#@within
#  function update_visualizer:_impl/sort/ascend/return_reverse
#  function update_visualizer:_impl/sort/ascend
#  function update_visualizer:_impl/sort/reverse_descend

data modify storage : _[-2].list append from storage : _[-1].descend[-1][-1]
data remove storage : _[-1].descend[-1][-1]
execute if data storage : _[-1].descend[-1][-1] run function update_visualizer:_impl/sort/ascend/return_reverse
