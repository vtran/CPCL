begin_metric
0
end_metric
begin_variables
43
var0 8 -1
var1 8 -1
var2 6 -1
var3 6 -1
var4 6 -1
var5 6 -1
var6 6 -1
var7 6 -1
var8 6 -1
var9 6 -1
var10 6 -1
var11 5 -1
var12 5 -1
var13 5 -1
var14 5 -1
var15 5 -1
var16 5 -1
var17 3 -1
var18 3 -1
var19 2 -1
var20 2 -1
var21 2 -1
var22 2 -1
var23 2 -1
var24 2 -1
var25 2 -1
var26 2 -1
var27 2 -1
var28 2 -1
var29 2 -1
var30 2 -1
var31 2 -1
var32 2 -1
var33 2 -1
var34 2 -1
var35 2 -1
var36 2 -1
var37 2 -1
var38 2 -1
var39 2 -1
var40 2 -1
var41 2 -1
var42 2 -1
end_variables
begin_state
5
1
0
2
3
1
4
4
2
3
4
1
0
2
0
3
0
1
0
0
1
0
0
1
0
1
1
0
0
0
1
0
1
1
1
0
1
1
1
0
0
1
1
end_state
begin_goal
2
25 0
33 0
end_goal
170
begin_operator
solve_blocksworld x1
0
1
3 9 0 10 2 35 0 38 -1 0
0
end_operator
begin_operator
solve_logistics y1
0
1
1 0 4 42 -1 0
0
end_operator
begin_operator
solve_blocksworld x2
0
1
3 41 0 3 3 4 1 37 -1 0
0
end_operator
begin_operator
solve_logistics y2
0
1
1 1 0 20 -1 0
0
end_operator
begin_operator
solve_blocksworld x3
0
1
3 8 4 33 0 7 1 32 -1 0
0
end_operator
begin_operator
stack a a x1
0
0
0
end_operator
begin_operator
stack a a x2
0
0
0
end_operator
begin_operator
stack a a x3
0
0
0
end_operator
begin_operator
putdown a x1
0
3
2 10 1 35 0 10 -1 4
2 10 1 35 0 28 -1 0
2 10 1 35 0 36 -1 0
0
end_operator
begin_operator
putdown a x2
0
3
2 41 0 6 0 6 -1 3
2 41 0 6 0 21 -1 0
2 41 0 6 0 39 -1 0
0
end_operator
begin_operator
putdown a x3
0
3
2 33 0 2 3 2 -1 2
2 33 0 2 3 29 -1 0
2 33 0 2 3 31 -1 0
0
end_operator
begin_operator
unstack a a x1
0
0
0
end_operator
begin_operator
unstack a a x2
0
0
0
end_operator
begin_operator
unstack a a x3
0
0
0
end_operator
begin_operator
pickup a x1
0
3
3 36 0 35 0 28 0 10 -1 1
2 36 0 35 0 28 -1 1
2 35 0 28 0 36 -1 1
0
end_operator
begin_operator
pickup a x2
0
3
3 41 0 21 0 6 3 6 -1 0
2 41 0 6 3 21 -1 1
3 41 0 21 0 6 3 39 -1 1
0
end_operator
begin_operator
pickup a x3
0
3
3 33 0 2 2 31 0 2 -1 3
3 33 0 2 2 31 0 29 -1 1
2 33 0 2 2 31 -1 1
0
end_operator
begin_operator
stack a b x1
0
4
3 40 0 10 1 35 0 10 -1 2
3 40 0 10 1 35 0 28 -1 0
3 40 0 10 1 35 0 36 -1 0
2 10 1 35 0 40 -1 1
0
end_operator
begin_operator
stack a b x2
0
3
3 41 0 3 2 6 0 3 -1 3
3 41 0 3 2 6 0 6 -1 3
3 41 0 3 2 6 0 21 -1 0
0
end_operator
begin_operator
stack a b x3
0
3
3 8 2 33 0 2 3 2 -1 2
3 8 2 33 0 2 3 8 -1 4
3 8 2 33 0 2 3 31 -1 0
0
end_operator
begin_operator
stack b a x1
0
4
3 9 1 35 0 36 0 9 -1 4
3 9 1 35 0 36 0 28 -1 0
2 9 1 35 0 36 -1 1
3 9 1 35 0 36 0 40 -1 0
0
end_operator
begin_operator
stack b a x2
0
3
3 41 0 3 1 6 3 3 -1 2
3 41 0 3 1 6 3 6 -1 1
3 41 0 3 1 6 3 21 -1 0
0
end_operator
begin_operator
stack b a x3
0
3
3 8 0 33 0 2 2 2 -1 4
3 8 0 33 0 2 2 8 -1 2
3 8 0 33 0 2 2 31 -1 0
0
end_operator
begin_operator
stack b b x1
0
0
0
end_operator
begin_operator
stack b b x2
0
0
0
end_operator
begin_operator
stack b b x3
0
0
0
end_operator
begin_operator
putdown b x1
0
3
2 9 1 35 0 9 -1 3
2 9 1 35 0 28 -1 0
2 9 1 35 0 40 -1 0
0
end_operator
begin_operator
putdown b x2
0
3
2 41 0 3 1 3 -1 2
2 41 0 3 1 21 -1 0
2 41 0 3 1 22 -1 0
0
end_operator
begin_operator
putdown b x3
0
3
2 8 0 33 0 8 -1 2
2 8 0 33 0 19 -1 0
2 8 0 33 0 31 -1 0
0
end_operator
begin_operator
unstack a b x1
0
4
4 36 0 10 2 35 0 28 0 10 -1 1
3 36 0 10 2 35 0 28 -1 1
3 10 2 35 0 28 0 36 -1 1
4 36 0 10 2 35 0 28 0 40 -1 0
0
end_operator
begin_operator
unstack a b x2
0
3
4 41 0 3 3 21 0 6 3 3 -1 2
4 41 0 3 3 21 0 6 3 6 -1 0
3 41 0 3 3 6 3 21 -1 1
0
end_operator
begin_operator
unstack a b x3
0
3
4 8 4 33 0 2 2 31 0 2 -1 3
4 8 4 33 0 2 2 31 0 8 -1 2
3 8 4 33 0 2 2 31 -1 1
0
end_operator
begin_operator
unstack b a x1
0
4
4 40 0 9 4 35 0 28 0 9 -1 1
3 40 0 9 4 35 0 28 -1 1
4 40 0 9 4 35 0 28 0 36 -1 0
3 9 4 35 0 28 0 40 -1 1
0
end_operator
begin_operator
unstack b a x2
0
3
4 41 0 3 2 21 0 6 1 3 -1 1
4 41 0 3 2 21 0 6 1 6 -1 3
3 41 0 3 2 6 1 21 -1 1
0
end_operator
begin_operator
unstack b a x3
0
3
4 8 2 33 0 2 4 31 0 2 -1 2
4 8 2 33 0 2 4 31 0 8 -1 0
3 8 2 33 0 2 4 31 -1 1
0
end_operator
begin_operator
unstack b b x1
0
0
0
end_operator
begin_operator
unstack b b x2
0
0
0
end_operator
begin_operator
unstack b b x3
0
0
0
end_operator
begin_operator
pickup b x1
0
3
3 40 0 35 0 28 0 9 -1 1
2 40 0 35 0 28 -1 1
2 35 0 28 0 40 -1 1
0
end_operator
begin_operator
pickup b x2
0
3
3 41 0 3 2 21 0 3 -1 1
2 41 0 3 2 21 -1 1
3 41 0 3 2 21 0 22 -1 1
0
end_operator
begin_operator
pickup b x3
0
3
3 8 2 33 0 31 0 8 -1 0
3 8 2 33 0 31 0 19 -1 1
2 8 2 33 0 31 -1 1
0
end_operator
begin_operator
stack a c x1
0
4
3 27 0 10 1 35 0 10 -1 3
2 10 1 35 0 27 -1 1
3 27 0 10 1 35 0 28 -1 0
3 27 0 10 1 35 0 36 -1 0
0
end_operator
begin_operator
stack b c x1
0
4
3 27 0 9 1 35 0 9 -1 0
2 9 1 35 0 27 -1 1
3 27 0 9 1 35 0 28 -1 0
3 27 0 9 1 35 0 40 -1 0
0
end_operator
begin_operator
stack a c x2
0
3
3 41 0 4 3 6 0 4 -1 2
3 41 0 4 3 6 0 6 -1 3
3 41 0 4 3 6 0 21 -1 0
0
end_operator
begin_operator
stack b c x2
0
3
3 41 0 3 1 4 3 3 -1 2
3 41 0 3 1 4 3 4 -1 1
3 41 0 3 1 4 3 21 -1 0
0
end_operator
begin_operator
stack a c x3
0
3
3 33 0 2 3 7 4 2 -1 2
3 33 0 2 3 7 4 7 -1 2
3 33 0 2 3 7 4 31 -1 0
0
end_operator
begin_operator
stack b c x3
0
3
3 8 0 33 0 7 4 7 -1 1
3 8 0 33 0 7 4 8 -1 2
3 8 0 33 0 7 4 31 -1 0
0
end_operator
begin_operator
stack c a x1
0
4
3 35 0 36 0 5 0 5 -1 1
3 35 0 36 0 5 0 27 -1 0
3 35 0 36 0 5 0 28 -1 0
2 35 0 5 0 36 -1 1
0
end_operator
begin_operator
stack c a x2
0
3
3 41 0 4 0 6 3 4 -1 3
3 41 0 4 0 6 3 6 -1 4
3 41 0 4 0 6 3 21 -1 0
0
end_operator
begin_operator
stack c a x3
0
3
3 33 0 2 2 7 0 2 -1 0
3 33 0 2 2 7 0 7 -1 4
3 33 0 2 2 7 0 31 -1 0
0
end_operator
begin_operator
stack c b x1
0
4
3 40 0 35 0 5 0 5 -1 2
3 40 0 35 0 5 0 27 -1 0
3 40 0 35 0 5 0 28 -1 0
2 35 0 5 0 40 -1 1
0
end_operator
begin_operator
stack c b x2
0
3
3 41 0 3 2 4 0 3 -1 0
3 41 0 3 2 4 0 4 -1 3
3 41 0 3 2 4 0 21 -1 0
0
end_operator
begin_operator
stack c b x3
0
3
3 8 2 33 0 7 0 7 -1 4
3 8 2 33 0 7 0 8 -1 3
3 8 2 33 0 7 0 31 -1 0
0
end_operator
begin_operator
stack c c x1
0
0
0
end_operator
begin_operator
stack c c x2
0
0
0
end_operator
begin_operator
stack c c x3
0
0
0
end_operator
begin_operator
putdown c x1
0
3
2 35 0 5 0 5 -1 4
2 35 0 5 0 27 -1 0
2 35 0 5 0 28 -1 0
0
end_operator
begin_operator
putdown c x2
0
3
2 41 0 4 0 4 -1 3
2 41 0 4 0 21 -1 0
2 41 0 4 0 30 -1 0
0
end_operator
begin_operator
putdown c x3
0
3
2 33 0 7 0 7 -1 4
2 33 0 7 0 31 -1 0
2 33 0 7 0 34 -1 0
0
end_operator
begin_operator
unstack a c x1
0
4
4 36 0 10 3 35 0 28 0 10 -1 1
4 36 0 10 3 35 0 28 0 27 -1 0
3 36 0 10 3 35 0 28 -1 1
3 10 3 35 0 28 0 36 -1 1
0
end_operator
begin_operator
unstack b c x1
0
4
4 40 0 9 0 35 0 28 0 9 -1 1
4 40 0 9 0 35 0 28 0 27 -1 0
3 40 0 9 0 35 0 28 -1 1
3 9 0 35 0 28 0 40 -1 1
0
end_operator
begin_operator
unstack a c x2
0
3
4 41 0 4 2 21 0 6 3 4 -1 3
4 41 0 4 2 21 0 6 3 6 -1 0
3 41 0 4 2 6 3 21 -1 1
0
end_operator
begin_operator
unstack b c x2
0
3
4 41 0 3 2 4 1 21 0 3 -1 1
4 41 0 3 2 4 1 21 0 4 -1 3
3 41 0 3 2 4 1 21 -1 1
0
end_operator
begin_operator
unstack a c x3
0
3
4 33 0 2 2 7 2 31 0 2 -1 3
4 33 0 2 2 7 2 31 0 7 -1 4
3 33 0 2 2 7 2 31 -1 1
0
end_operator
begin_operator
unstack b c x3
0
3
4 8 2 33 0 7 1 31 0 7 -1 4
4 8 2 33 0 7 1 31 0 8 -1 0
3 8 2 33 0 7 1 31 -1 1
0
end_operator
begin_operator
unstack c a x1
0
4
4 27 0 35 0 28 0 5 1 5 -1 0
3 35 0 28 0 5 1 27 -1 1
3 27 0 35 0 5 1 28 -1 1
4 27 0 35 0 28 0 5 1 36 -1 0
0
end_operator
begin_operator
unstack c a x2
0
3
4 41 0 4 3 21 0 6 4 4 -1 0
4 41 0 4 3 21 0 6 4 6 -1 3
3 41 0 4 3 6 4 21 -1 1
0
end_operator
begin_operator
unstack c a x3
0
3
4 33 0 2 0 7 4 31 0 2 -1 2
4 33 0 2 0 7 4 31 0 7 -1 0
3 33 0 2 0 7 4 31 -1 1
0
end_operator
begin_operator
unstack c b x1
0
4
4 27 0 35 0 28 0 5 2 5 -1 0
3 35 0 28 0 5 2 27 -1 1
3 27 0 35 0 5 2 28 -1 1
4 27 0 35 0 28 0 5 2 40 -1 0
0
end_operator
begin_operator
unstack c b x2
0
3
4 41 0 3 0 4 3 21 0 3 -1 2
4 41 0 3 0 4 3 21 0 4 -1 0
3 41 0 3 0 4 3 21 -1 1
0
end_operator
begin_operator
unstack c b x3
0
3
4 8 3 33 0 7 4 31 0 7 -1 0
4 8 3 33 0 7 4 31 0 8 -1 2
3 8 3 33 0 7 4 31 -1 1
0
end_operator
begin_operator
unstack c c x1
0
0
0
end_operator
begin_operator
unstack c c x2
0
0
0
end_operator
begin_operator
unstack c c x3
0
0
0
end_operator
begin_operator
pickup c x1
0
3
3 27 0 35 0 28 0 5 -1 0
2 35 0 28 0 27 -1 1
2 27 0 35 0 28 -1 1
0
end_operator
begin_operator
pickup c x2
0
3
3 41 0 4 3 21 0 4 -1 0
2 41 0 4 3 21 -1 1
3 41 0 4 3 21 0 30 -1 1
0
end_operator
begin_operator
pickup c x3
0
3
3 33 0 7 4 31 0 7 -1 0
2 33 0 7 4 31 -1 1
3 33 0 7 4 31 0 34 -1 1
0
end_operator
begin_operator
load_truck t1 p1 l11 y1
0
1
3 24 0 16 1 0 1 0 -1 3
0
end_operator
begin_operator
load_truck t1 p1 l11 y2
0
1
3 1 6 15 2 23 0 1 -1 5
0
end_operator
begin_operator
load_truck t2 p1 l11 y1
0
1
3 24 0 0 1 13 0 0 -1 2
0
end_operator
begin_operator
load_truck t2 p1 l11 y2
0
1
3 1 6 11 3 23 0 1 -1 3
0
end_operator
begin_operator
load_plane a1 p1 l11 y1
0
1
3 24 0 17 1 0 1 0 -1 6
0
end_operator
begin_operator
load_plane a1 p1 l11 y2
0
1
3 1 6 18 0 23 0 1 -1 2
0
end_operator
begin_operator
unload_truck t1 p1 l11 y1
0
1
3 24 0 16 1 0 3 0 -1 1
0
end_operator
begin_operator
unload_truck t1 p1 l11 y2
0
1
3 1 5 15 2 23 0 1 -1 6
0
end_operator
begin_operator
unload_truck t2 p1 l11 y1
0
1
3 24 0 0 2 13 0 0 -1 1
0
end_operator
begin_operator
unload_truck t2 p1 l11 y2
0
1
3 1 3 11 3 23 0 1 -1 6
0
end_operator
begin_operator
unload_plane a1 p1 l11 y1
0
1
3 24 0 17 1 0 6 0 -1 1
0
end_operator
begin_operator
unload_plane a1 p1 l11 y2
0
1
3 1 2 18 0 23 0 1 -1 6
0
end_operator
begin_operator
load_truck t1 p1 l12 y1
0
1
3 24 0 16 0 0 5 0 -1 3
0
end_operator
begin_operator
load_truck t1 p1 l12 y2
0
1
3 1 1 15 3 23 0 1 -1 5
0
end_operator
begin_operator
load_truck t2 p1 l12 y1
0
1
3 24 0 0 5 13 3 0 -1 2
0
end_operator
begin_operator
load_truck t2 p1 l12 y2
0
1
3 1 1 11 0 23 0 1 -1 3
0
end_operator
begin_operator
unload_truck t1 p1 l12 y1
0
1
3 24 0 16 0 0 3 0 -1 5
0
end_operator
begin_operator
unload_truck t1 p1 l12 y2
0
1
3 1 5 15 3 23 0 1 -1 1
0
end_operator
begin_operator
unload_truck t2 p1 l12 y1
0
1
3 24 0 0 2 13 3 0 -1 5
0
end_operator
begin_operator
unload_truck t2 p1 l12 y2
0
1
3 1 3 11 0 23 0 1 -1 1
0
end_operator
begin_operator
load_truck t1 p1 l21 y1
0
1
3 24 0 16 3 0 0 0 -1 3
0
end_operator
begin_operator
load_truck t1 p1 l21 y2
0
1
3 1 4 15 0 23 0 1 -1 5
0
end_operator
begin_operator
load_truck t2 p1 l21 y1
0
1
3 24 0 0 0 13 2 0 -1 2
0
end_operator
begin_operator
load_truck t2 p1 l21 y2
0
1
3 1 4 11 1 23 0 1 -1 3
0
end_operator
begin_operator
load_plane a1 p1 l21 y1
0
1
3 24 0 17 0 0 0 0 -1 6
0
end_operator
begin_operator
load_plane a1 p1 l21 y2
0
1
3 1 4 18 1 23 0 1 -1 2
0
end_operator
begin_operator
unload_truck t1 p1 l21 y1
0
1
3 24 0 16 3 0 3 0 -1 0
0
end_operator
begin_operator
unload_truck t1 p1 l21 y2
0
1
3 1 5 15 0 23 0 1 -1 4
0
end_operator
begin_operator
unload_truck t2 p1 l21 y1
0
1
3 24 0 0 2 13 2 0 -1 0
0
end_operator
begin_operator
unload_truck t2 p1 l21 y2
0
1
3 1 3 11 1 23 0 1 -1 4
0
end_operator
begin_operator
unload_plane a1 p1 l21 y1
0
1
3 24 0 17 0 0 6 0 -1 0
0
end_operator
begin_operator
unload_plane a1 p1 l21 y2
0
1
3 1 2 18 1 23 0 1 -1 4
0
end_operator
begin_operator
move_plane a1 l11 l21 y1
0
1
2 24 0 17 1 17 -1 0
0
end_operator
begin_operator
move_plane a1 l11 l21 y2
0
1
2 18 0 23 0 18 -1 1
0
end_operator
begin_operator
move_plane a1 l21 l11 y1
0
1
2 24 0 17 0 17 -1 1
0
end_operator
begin_operator
move_plane a1 l21 l11 y2
0
1
2 18 1 23 0 18 -1 0
0
end_operator
begin_operator
load_truck t1 p1 l22 y1
0
1
3 24 0 16 2 0 4 0 -1 3
0
end_operator
begin_operator
load_truck t1 p1 l22 y2
0
1
3 1 0 15 1 23 0 1 -1 5
0
end_operator
begin_operator
load_truck t2 p1 l22 y1
0
1
3 24 0 0 4 13 1 0 -1 2
0
end_operator
begin_operator
load_truck t2 p1 l22 y2
0
1
3 1 0 11 2 23 0 1 -1 3
0
end_operator
begin_operator
unload_truck t1 p1 l22 y1
0
1
3 24 0 16 2 0 3 0 -1 4
0
end_operator
begin_operator
unload_truck t1 p1 l22 y2
0
1
3 1 5 15 1 23 0 1 -1 0
0
end_operator
begin_operator
unload_truck t2 p1 l22 y1
0
1
3 24 0 0 2 13 1 0 -1 4
0
end_operator
begin_operator
unload_truck t2 p1 l22 y2
0
1
3 1 3 11 2 23 0 1 -1 0
0
end_operator
begin_operator
move_truck t1 l12 l11 c1 y1
0
1
2 24 0 16 0 16 -1 1
0
end_operator
begin_operator
move_truck t2 l12 l11 c1 y1
0
1
2 24 0 13 3 13 -1 0
0
end_operator
begin_operator
move_truck t1 l12 l11 c1 y2
0
1
2 15 3 23 0 15 -1 2
0
end_operator
begin_operator
move_truck t2 l12 l11 c1 y2
0
1
2 11 0 23 0 11 -1 3
0
end_operator
begin_operator
move_truck t1 l11 l12 c1 y1
0
1
2 24 0 16 1 16 -1 0
0
end_operator
begin_operator
move_truck t2 l11 l12 c1 y1
0
1
2 24 0 13 0 13 -1 3
0
end_operator
begin_operator
move_truck t1 l11 l12 c1 y2
0
1
2 15 2 23 0 15 -1 3
0
end_operator
begin_operator
move_truck t2 l11 l12 c1 y2
0
1
2 11 3 23 0 11 -1 0
0
end_operator
begin_operator
move_truck t1 l22 l21 c2 y1
0
1
2 24 0 16 2 16 -1 3
0
end_operator
begin_operator
move_truck t2 l22 l21 c2 y1
0
1
2 24 0 13 1 13 -1 2
0
end_operator
begin_operator
move_truck t1 l22 l21 c2 y2
0
1
2 15 1 23 0 15 -1 0
0
end_operator
begin_operator
move_truck t2 l22 l21 c2 y2
0
1
2 11 2 23 0 11 -1 1
0
end_operator
begin_operator
move_truck t1 l21 l22 c2 y1
0
1
2 24 0 16 3 16 -1 2
0
end_operator
begin_operator
move_truck t2 l21 l22 c2 y1
0
1
2 24 0 13 2 13 -1 1
0
end_operator
begin_operator
move_truck t1 l21 l22 c2 y2
0
1
2 15 0 23 0 15 -1 1
0
end_operator
begin_operator
move_truck t2 l21 l22 c2 y2
0
1
2 11 1 23 0 11 -1 2
0
end_operator
begin_operator
s_up_x sx1 sx1 sx2 y3
0
1
3 25 0 12 2 14 2 12 -1 0
0
end_operator
begin_operator
s_up_x sx1 sx2 sx2 y3
0
1
3 25 0 12 2 14 1 12 -1 0
0
end_operator
begin_operator
s_up_y sx1 sx1 sx2 y3
0
1
3 25 0 12 2 14 2 14 -1 1
0
end_operator
begin_operator
s_up_y sx2 sx1 sx2 y3
0
1
3 25 0 12 0 14 2 14 -1 1
0
end_operator
begin_operator
s_down_x sx2 sx1 sx1 y3
0
1
3 25 0 12 0 14 2 12 -1 2
0
end_operator
begin_operator
s_down_x sx2 sx2 sx1 y3
0
1
3 25 0 12 0 14 1 12 -1 2
0
end_operator
begin_operator
s_down_y sx1 sx2 sx1 y3
0
1
3 25 0 12 2 14 1 14 -1 2
0
end_operator
begin_operator
s_down_y sx2 sx2 sx1 y3
0
1
3 25 0 12 0 14 1 14 -1 2
0
end_operator
begin_operator
s_up_x sx1 sy1 sx2 y3
0
1
3 25 0 12 2 14 3 12 -1 0
0
end_operator
begin_operator
s_up_y sy1 sx1 sx2 y3
0
1
3 25 0 12 1 14 2 14 -1 1
0
end_operator
begin_operator
s_down_x sx2 sy1 sx1 y3
0
1
3 25 0 12 0 14 3 12 -1 2
0
end_operator
begin_operator
s_down_y sy1 sx2 sx1 y3
0
1
3 25 0 12 1 14 1 14 -1 2
0
end_operator
begin_operator
solve_grid sx1 sy1 y3
0
1
3 25 0 12 2 14 3 26 -1 0
0
end_operator
begin_operator
s_up_x sy1 sx1 sy2 y3
0
1
3 25 0 12 1 14 2 12 -1 3
0
end_operator
begin_operator
s_up_x sy1 sx2 sy2 y3
0
1
3 25 0 12 1 14 1 12 -1 3
0
end_operator
begin_operator
s_up_x sy1 sy1 sy2 y3
0
1
3 25 0 12 1 14 3 12 -1 3
0
end_operator
begin_operator
s_up_x sx1 sy2 sx2 y3
0
1
3 25 0 12 2 14 0 12 -1 0
0
end_operator
begin_operator
s_up_x sy1 sy2 sy2 y3
0
1
3 25 0 12 1 14 0 12 -1 3
0
end_operator
begin_operator
s_up_y sy2 sx1 sx2 y3
0
1
3 25 0 12 3 14 2 14 -1 1
0
end_operator
begin_operator
s_up_y sx1 sy1 sy2 y3
0
1
3 25 0 12 2 14 3 14 -1 0
0
end_operator
begin_operator
s_up_y sx2 sy1 sy2 y3
0
1
3 25 0 12 0 14 3 14 -1 0
0
end_operator
begin_operator
s_up_y sy1 sy1 sy2 y3
0
1
3 25 0 12 1 14 3 14 -1 0
0
end_operator
begin_operator
s_up_y sy2 sy1 sy2 y3
0
1
3 25 0 12 3 14 3 14 -1 0
0
end_operator
begin_operator
s_down_x sy2 sx1 sy1 y3
0
1
3 25 0 12 3 14 2 12 -1 1
0
end_operator
begin_operator
s_down_x sy2 sx2 sy1 y3
0
1
3 25 0 12 3 14 1 12 -1 1
0
end_operator
begin_operator
s_down_x sy2 sy1 sy1 y3
0
1
3 25 0 12 3 14 3 12 -1 1
0
end_operator
begin_operator
s_down_x sx2 sy2 sx1 y3
0
1
3 25 0 12 0 14 0 12 -1 2
0
end_operator
begin_operator
s_down_x sy2 sy2 sy1 y3
0
1
3 25 0 12 3 14 0 12 -1 1
0
end_operator
begin_operator
s_down_y sy2 sx2 sx1 y3
0
1
3 25 0 12 3 14 1 14 -1 2
0
end_operator
begin_operator
s_down_y sx1 sy2 sy1 y3
0
1
3 25 0 12 2 14 0 14 -1 3
0
end_operator
begin_operator
s_down_y sx2 sy2 sy1 y3
0
1
3 25 0 12 0 14 0 14 -1 3
0
end_operator
begin_operator
s_down_y sy1 sy2 sy1 y3
0
1
3 25 0 12 1 14 0 14 -1 3
0
end_operator
begin_operator
s_down_y sy2 sy2 sy1 y3
0
1
3 25 0 12 3 14 0 14 -1 3
0
end_operator
0
