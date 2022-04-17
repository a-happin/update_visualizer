#> update_visualizer:_index.d
#@private

#>
#@public
  #declare storage update_visualizer:

#>
#@within update_visualizer:**
  #declare storage :
  #declare score_holder $time
  #declare score_holder $
  #declare score_holder #16
  #declare score_holder #65536
  #declare tag update_visualizer
  #declare tag update_visualizer.notifier
  #declare tag update_visualizer.block_updated
  #declare tag update_visualizer.observer_updated
  #declare tag update_visualizer.glowing_block

#>
#@within update_visualizer:task/**
  #declare score_holder $current

#>
#@within update_visualizer:summon/**
  #declare tag update_visualizer.init

#>
#@within update_visualizer:summon/notifier/**
  #declare score_holder $genetator
