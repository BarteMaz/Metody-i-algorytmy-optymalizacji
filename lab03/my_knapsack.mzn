% from dzn file
set of int: ITEM;
int: capacity;
array[ITEM] of int: profits;
array[ITEM] of int: weights;

% variables
array[ITEM] of var bool: taken;
var int: profit;
var int: weight;

constraint profit = sum([profits[i] * taken[i] | i in ITEM]);

constraint weight = sum([weights[i] * taken[i] | i in ITEM]);

constraint weight < capacity;

solve maximize profit