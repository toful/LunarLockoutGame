;object in the middle of the trajectory
;_ _ _ _ _
;_ _ c _ _
;B _ G _ _
;_ _ _ _ _
;_ _ R _ _

(define (problem lunarLockoutGame)
  (:domain lunarLockoutGame)
  (:objects c1 c2 c3 c4 c5 - coord red green yellow blue orange - spacecraft)
  (:init
    (biggerThan c5 c4) (biggerThan c5 c3) (biggerThan c5 c2) (biggerThan c5 c1)
    (biggerThan c4 c3) (biggerThan c4 c2) (biggerThan c4 c1)
    (biggerThan c3 c2) (biggerThan c3 c1)
    (biggerThan c2 c1)
    (nextto c1 c2) (nextto c2 c3) (nextto c3 c4) (nextto c4 c5)
    (at red c3 c5) (at green c3 c3) (at yellow c3 c2) (at blue c1 c3)
  )
  (:goal
    (at red c3 c3 ) )
)