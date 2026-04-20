% Problem plecakowy z TRZEMA plecakami
set of int: ITEM;
int: capacity1;
int: capacity2;
int: capacity3;
array[ITEM] of int: profits;
array[ITEM] of int: weights;

array[ITEM] of var 0..3: knapsack;  % 0 = poza, 1/2/3 = plecak

var int: total_profit = sum(i in ITEM)(if knapsack[i] > 0 then profits[i] else 0 endif);

var int: w1 = sum(i in ITEM)(if knapsack[i] == 1 then weights[i] else 0 endif);
var int: w2 = sum(i in ITEM)(if knapsack[i] == 2 then weights[i] else 0 endif);
var int: w3 = sum(i in ITEM)(if knapsack[i] == 3 then weights[i] else 0 endif);

constraint w1 <= capacity1;
constraint w2 <= capacity2;
constraint w3 <= capacity3;

solve maximize total_profit;

output ["knapsack = "] ++ [show(knapsack)] ++ [";\n"] ++
       ["total_profit = "] ++ [show(total_profit)] ++ [";\n"] ++
       ["w1 = "] ++ [show(w1)] ++ ["; w2 = "] ++ [show(w2)] ++ ["; w3 = "] ++ [show(w3)] ++ [";\n"] ++
       ["----------\n"] ++ ["==========\n"];
