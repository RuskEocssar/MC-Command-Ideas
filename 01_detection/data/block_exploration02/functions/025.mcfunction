### 視線先ブロック探査 functionループ型 0.25m
# 1mおきに移動してブロックの有無を確認

## 探査
# 角8方向に探査点を伸ばしてチェック
scoreboard players set #025 _ 1
execute if block ^ ^ ^0.125 #block_exploration02:through if block ^ ^ ^-0.125 #block_exploration02:through rotated ~180 ~ if block ^ ^ ^0.125 #block_exploration02:through if block ^ ^ ^-0.125 #block_exploration02:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.125 #block_exploration02:through if block ^ ^ ^-0.125 #block_exploration02:through rotated ~180 ~ if block ^ ^ ^0.125 #block_exploration02:through if block ^ ^ ^0.125 #block_exploration02:through run scoreboard players set #025 _ 0

# ブロックがあったらさらに細かくチェック
execute if score #025 _ matches 1 positioned ^ ^ ^-0.0625 run function block_exploration02:0125
execute if score #025 _ matches 1 positioned ^ ^ ^0.0625 run function block_exploration02:0125