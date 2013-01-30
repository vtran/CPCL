(define (problem p2)
 (:domain forest)
 (:objects sx1 sx2 
           sy1 sy2 - sub_location
 )
 (:init 
	;;;;;;;;top level grid;;;;;;;
  (at x2) 
  (at y2)
  (succ_loc x1 x2)
  (succ_loc y1 y2)
	;;;;;;;;subproblems;;;;;;;;;;
  (prob_at x1 grid)
	 (s_at_x sx2 x1)
	 (s_at_y sy2 x1)
	 (s_goal_x sx1 x1)
  (s_goal_y sy1 x1)
  (prob_at x2 grid)
	 (s_at_x sx2 x2)
	 (s_at_y sy2 x2)
	 (s_goal_x sx1 x2)
  (s_goal_y sy1 x2)
  (prob_at y1 grid)
	 (s_at_x sx2 y1)
	 (s_at_y sy2 y1)
	 (s_goal_x sx1 y1)
	 (s_goal_y sy1 y1)
  (prob_at y2 blocksworld)
  (s_on c a y2) (s_on_table a y2) (s_on_table b y2)
  (s_clear b y2) (s_clear c y2) (s_empty y2)
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
	(and (at x1) (at y1))
 )
)
