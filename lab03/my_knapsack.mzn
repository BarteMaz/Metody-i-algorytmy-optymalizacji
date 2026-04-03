set of int: ITEM;
int: capacity;
array[ITEM] of int: profits;
array[ITEM] of int: weights;

array[ITEM] of var bool: taken;
var int: profit;

constraint profit = sum([profits[i] * taken[i] | i in ITEM]);

solve maximize profit