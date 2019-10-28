
(define (domain lunarLockoutGame)
  (:requirements :strips)
  (:types spacecraft coord)
  (:predicates 
    (biggerThan ?a ?b - coord)
    (nextto ?a ?b - coord)
    (at ?a - spacecraft ?x ?y - coord)
    (between ?a ?b ?c - coord)
  )
   
  (:action change_row
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?y2 ?y_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (or
                      (and (biggerThan ?y ?y_dest) (nextto ?y2 ?y_dest) ) ;up
                      (and (biggerThan ?y_dest ?y) (nextto ?y_dest ?y2) ) ;down
                    )
                    (and (at ?obj2 ?x ?y2) (not (at ?obj2 ?x ?y_dest)) (not (at ?obj2 ?x ?y)) )
                    (forall (?obj_aux - spacecraft ?y_aux - coord) 
                      (not (and 
                        (at ?obj_aux ?x ?y_aux)
                        (between ?y2 ?y_aux ?y) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x ?y_dest)
            )
  )

  (:action cahnge_column
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?x2 ?x_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (or
                      (and (biggerThan ?x ?x_dest) (nextto ?x2 ?x_dest) ) ;right
                      (and (biggerThan ?x_dest ?x) (nextto ?x_dest ?x2) ) ;left
                    )
                    (and (at ?obj2 ?x2 ?y) (not (at ?obj2 ?x_dest ?y)) (not (at ?obj2 ?x ?y)) )
                    (forall (?obj_aux - spacecraft ?x_aux - coord) 
                      (not (and 
                        (at ?obj_aux ?x_aux ?y)
                        (between ?x ?x_aux ?x2) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x_dest ?y)
            )
  )
)