#> update_visualizer:_impl/sort/reverse_descend
#@public
#@input storage : _[-1].list[-2]
#@output storage : _[-1].list

#>
#@within update_visualizer:_impl/sort/**
scoreboard objectives add _sort dummy

  data modify storage : _ append value {ascend:[[]]}
    function update_visualizer:_impl/sort/ascend/setup
    function update_visualizer:_impl/sort/descend/impl

    ## finalize
    ### ascendに入っていた場合はそのままコピー
    execute if data storage : _[-1].ascend[0] run data modify storage : _[-2].list set from storage : _[-1].ascend[-1]
    ### descendに入っていた場合は反転してmove
    execute if data storage : _[-1].descend[0] run function update_visualizer:_impl/sort/ascend/return_reverse
  data remove storage : _[-1]
scoreboard objectives remove _sort