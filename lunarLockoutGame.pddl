
(define (domain lunarLockoutGame)
  (:requirements :strips)
  (:types spacecraft coord)
  (:predicates
    (biggerThan ?a ?b - coord)
    (nextto ?a ?b - coord)
    (at ?a - spacecraft ?x ?y - coord)
  )
   
  (:action move-up
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?y2 ?y_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (biggerThan ?y ?y_dest)
                    (and (at ?obj2 ?x ?y2) (not (at ?obj2 ?x ?y_dest)) (not (at ?obj2 ?x ?y)) )
                    (nextto ?y2 ?y_dest)
                    (forall (?obj_aux - spacecraft ?y_aux - coord) 
                      (not (and
                        (at ?obj_aux ?x ?y_aux)
                        (biggerThan ?y ?y_aux)
                        (biggerThan ?y_aux ?y2 ) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x ?y_dest)
            )
  )

  (:action move-down
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?y2 ?y_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (biggerThan ?y_dest ?y)
                    (and (at ?obj2 ?x ?y2) (not (at ?obj2 ?x ?y_dest)) (not (at ?obj2 ?x ?y)) )
                    (nextto ?y_dest ?y2)
                    (forall (?obj_aux - spacecraft ?y_aux - coord) 
                      (not (and
                        (at ?obj_aux ?x ?y_aux)
                        (biggerThan ?y_aux ?y)
                        (biggerThan ?y2 ?y_aux) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x ?y_dest)
            )
  )

  (:action move-right
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?x2 ?x_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (biggerThan ?x_dest  ?x)
                    (and (at ?obj2 ?x2 ?y) (not (at ?obj2 ?x_dest ?y)) (not (at ?obj2 ?x ?y)) )
                    (nextto ?x_dest ?x2)
                    (forall (?obj_aux - spacecraft ?x_aux - coord) 
                      (not (and
                        (at ?obj_aux ?x_aux ?y)
                        (biggerThan ?x_aux ?x)
                        (biggerThan ?x2 ?x_aux) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x_dest ?y)
            )
  )

  (:action move-left
    :parameters (?obj1 ?obj2 - spacecraft
                 ?x ?y ?x2 ?x_dest - coord)
    :precondition (and
                    (at ?obj1 ?x ?y)
                    (biggerThan ?x ?x_dest)
                    (and (at ?obj2 ?x2 ?y) (not (at ?obj2 ?x_dest ?y)) (not (at ?obj2 ?x ?y)) )
                    (nextto ?x2 ?x_dest)
                    (forall (?obj_aux - spacecraft ?x_aux - coord) 
                      (not (and
                        (at ?obj_aux ?x_aux ?y)
                        (biggerThan ?x ?x_aux)
                        (biggerThan ?x_aux ?x2) 
                      ))
                    )
                  )
    :effect (and
              (not (at ?obj1 ?x ?y))
              (at ?obj1 ?x_dest ?y)
            )
  )
)