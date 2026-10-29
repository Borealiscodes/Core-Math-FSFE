/-
Cross-Altitude Consistency
A7 → A8
Author: Borealis Serenity Hedling
Date: 29 October 2026
-/

import A7.Theorems
import A8.Theorems
import A7.OperatorInvariants
import A7.FusionInvariants
import A8.Operator
import A8.Fusion
import Mathlib.Geometry.Manifold.Basic

namespace Consistency

variable {W M : Type} [SmoothManifold M]

structure ConsistencyA7A8 :=
  (Iop : A7.OperatorInvariant W)
  (Ifuse : A7.FusionInvariant W)
  (H : A8.HolonomyOperator M)
  (F : A8.FusionOperator M)

  /-- Holonomy must preserve operator invariants (A8 theorem). -/
  (holonomy_preserves :
    ∀ w : W, A8.holonomy_preserves_invariants H Iop w = True)

  /-- Fusion must preserve fusion invariants (A7 theorem). -/
  (fusion_preserves :
    ∀ w : W, A7.fusion_invariant_stable Ifuse F w = True)

end Consistency
