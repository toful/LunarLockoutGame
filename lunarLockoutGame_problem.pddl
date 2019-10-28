;_ _ _ _ O
;_ _ G _ _
;_ B _ _ _
;_ _ _ c _
;_ _ _ _ R

(define (problem lunarLockoutGame)
  (:domain lunarLockoutGame)
  (:objects c1 c2 c3 c4 c5 - coord red green yellow blue orange - spacecraft)
  (:init
    (biggerThan c5 c4) (biggerThan c5 c3) (biggerThan c5 c2) (biggerThan c5 c1)
    (biggerThan c4 c3) (biggerThan c4 c2) (biggerThan c4 c1)
    (biggerThan c3 c2) (biggerThan c3 c1)
    (biggerThan c2 c1)
    (nextto c1 c2) (nextto c2 c3) (nextto c3 c4) (nextto c4 c5)
    (at red c5 c5) (at green c3 c2) (at yellow c4 c4) (at blue c2 c3) (at orange c5 c1) 
  )
  (:goal
    (at red c3 c3 ) )
)