(define (problem p3)
 (:domain forest)
 (:objects sx1 sx2 
           sy1 sy2 - sub_location
 )
 (:init 
	;;;;;;;;top level grid;;;;;;;
  (oneof  (at x1) (at x2) (at x3))
  (oneof  (at y1) (at y2) (at y3))
(succ_loc x1 x2)
  (succ_loc x2 x3)
  (succ_loc y1 y2)
  (succ_loc y2 y3)
	;;;;;;;;subproblems;;;;;;;;;;
  (prob_at x1 blocksworld)
	 (s_on c a x1) (s_on_table a x1) (s_on_table b x1)
  (s_clear b x1) (s_clear c x1) (s_empty x1)
  (prob_at x2 blocksworld)
	 (s_on c a x2) (s_on_table a x2) (s_on_table b x2)
  (s_clear b x2) (s_clear c x2) (s_empty x2)
  (prob_at x3 blocksworld)
	 (s_on c a x3) (s_on_table a x3) (s_on_table b x3)
  (s_clear b x3) (s_clear c x3) (s_empty x3)
  (prob_at y1 logistics)
  (s_pkg_at p1 l12 y1) (s_truck_at t1 l12 y1)
  (s_truck_at t2 l21 y1) (s_plane_at a1 l11 y1)
  (prob_at y2 logistics)
  (s_pkg_at p1 l12 y2) (s_truck_at t1 l12 y2)
  (s_truck_at t2 l21 y2) (s_plane_at a1 l11 y2)
  (prob_at y3 grid)
	 (s_at_x sx2 y3)
	 (s_at_y sy2 y3)
	 (s_goal_x sx1 y3)
	 (s_goal_y sy1 y3)
	;;;all grid problems
  (s_succ_loc sx1 sx2)
  (s_succ_loc sy1 sy2)

  ;;;;;;logistics sub-problem;;
  (s_city_loc l11 c1) (s_city_loc l12 c1)
  (s_city_loc l21 c2) (s_city_loc l22 c2)
  (s_airport_loc l11) (s_airport_loc l21)
  (neq l11 l12) (neq l11 l21) (neq l11 l22)
  (neq l12 l11) (neq l12 l21) (neq l12 l22)
  (neq l21 l12) (neq l21 l11) (neq l21 l22)
  (neq l22 l12) (neq l22 l21) (neq l22 l11)

 )
 (:goal 
	(and (at x3) (at y3))
 )
)
