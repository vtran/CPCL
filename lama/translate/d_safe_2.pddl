(define (domain safe)
   (:predicates (right-combination ?x)
                (safe-open))

   (:action try
       :parameters  (?x)
       :effect (and (when (right-combination ?x) (safe-open))))
)
