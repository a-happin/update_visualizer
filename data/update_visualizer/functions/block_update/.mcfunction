#> update_visualizer:block_update/
#@within
#  function update_visualizer:visualize/run/
#  function update_visualizer:task/notifier/block_update/

function update_visualizer:summon/marker/block_update/
execute if data storage update_visualizer: task{block: "activator_rail"} if block ~ ~ ~ activator_rail run function update_visualizer:block_update/activator_rail/
