### 視線先ブロック探査 functionループ型 1m
# 1mおきに移動してブロックの有無を確認

## 探査
# 角8方向に探査点を伸ばしてチェック
scoreboard players set #1 _ 1
execute if block ^ ^ ^0.5 #block_exploration02:through if block ^ ^ ^-0.5 #block_exploration02:through rotated ~180 ~ if block ^ ^ ^0.5 #block_exploration02:through if block ^ ^ ^-0.5 #block_exploration02:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.5 #block_exploration02:through if block ^ ^ ^-0.5 #block_exploration02:through rotated ~180 ~ if block ^ ^ ^0.5 #block_exploration02:through if block ^ ^ ^-0.5 #block_exploration02:through run scoreboard players set #1 _ 0

# ブロックがあったらさらに細かくチェック
execute if score #1 _ matches 1 positioned ^ ^ ^-0.25 run function block_exploration02:05
execute if score #1 _ matches 1 positioned ^ ^ ^0.25 run function block_exploration02:05

## ループ
# ブロックがなかったら1m先に進む
scoreboard players remove #loop _ 1
execute if score #loop _ matches 1.. positioned ^ ^ ^1 run function block_exploration02:1