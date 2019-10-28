;R _ _ Y _
;_ B _ _ _
;_ _ _ _ _
;_ _ _ G _
;_ O _ _ _

(define (problem lunarLockoutGame)
  (:domain lunarLockoutGame)
  (:objects c1 c2 c3 c4 c5 - coord red green yellow blue orange - spacecraft)
  (:init
    (biggerThan c5 c4) (biggerThan c5 c3) (biggerThan c5 c2) (biggerThan c5 c1)
    (biggerThan c4 c3) (biggerThan c4 c2) (biggerThan c4 c1)
    (biggerThan c3 c2) (biggerThan c3 c1)
    (biggerThan c2 c1)
    (nextto c1 c2) (nextto c2 c3) (nextto c3 c4) (nextto c4 c5)
    (between c1 c2 c5) (between c1 c3 c5) (between c1 c4 c5)
    (between c1 c2 c4) (between c1 c3 c4) (between c1 c2 c3)
    (between c2 c3 c5) (between c2 c4 c5) (between c3 c4 c5)
    (between c5 c2 c1) (between c5 c3 c1) (between c5 c4 c1)
    (between c4 c2 c1) (between c4 c3 c1) (between c3 c2 c1)
    (between c5 c3 c2) (between c5 c4 c2) (between c5 c4 c3)
    (at red c1 c1) (at green c4 c4) (at yellow c4 c1) (at blue c2 c2) (at orange c2 c5) 
  )
  (:goal
    (at red c3 c3 ) )
)