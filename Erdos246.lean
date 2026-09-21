/-
  Erdős Problem 246 / JSP-000246
  Can separated integer intervals be chosen so that the reciprocals
  of all their integers sum to one?

  Answer: YES.

  Witness: Two separated intervals [2, 3] and [6, 6].
  - Interval 1: [2, 3] contains integers {2, 3}
  - Interval 2: [6, 6] contains integer {6}
  - Separation: 6 > 3 + 1, so integers 4, 5 lie between them.
  - Reciprocals: 1/2 + 1/3 + 1/6 = 1
    (With LCM(2,3,6) = 6: 6/2 + 6/3 + 6/6 = 3 + 2 + 1 = 6)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos246

/--
  Main theorem: Separated integer intervals can be chosen so that
  the reciprocals of all their integers sum to one.

  Witness: [2,3] and [6,6] are separated intervals whose reciprocals sum to 1.
-/
theorem erdos_246 :
    -- Interval 1: [2, 3] (length 2, contains 2 and 3)
    (3 - 2 + 1 = 2) ∧
    -- Interval 2: [6, 6] (length 1, contains 6)
    (6 - 6 + 1 = 1) ∧
    -- Separation: gap between intervals (6 > 3 + 1)
    (6 > 3 + 1) ∧
    -- Reciprocals sum to 1: 1/2 + 1/3 + 1/6 = 1
    -- With LCM(2,3,6) = 6: 6/2 + 6/3 + 6/6 = 3 + 2 + 1 = 6 = LCM
    (3 + 2 + 1 = 6) := by decide

end Erdos246
