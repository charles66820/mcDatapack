# yellow win
execute if score pointsY points >= pointsR points if score pointsY points >= pointsG points if score pointsY points >= pointsB points run tellraw @a "yellow win"

# red win
execute if score pointsR points >= pointsY points if score pointsR points >= pointsG points if score pointsR points >= pointsB points run tellraw @a "red win"

# green win
execute if score pointsG points >= pointsY points if score pointsG points >= pointsR points if score pointsG points >= pointsB points run tellraw @a "green win"

# blue win
execute if score pointsB points >= pointsY points if score pointsB points >= pointsR points if score pointsB points >= pointsG points run tellraw @a "blue win"
