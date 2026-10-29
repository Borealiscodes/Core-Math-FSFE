/-
Cross-Altitude Consistency
A6 → A7
Author: Borealis Serenity Hedling
Date: 29 October 2026
-/

import A6.Theorems
import A7.Theorems
import A6.Evolution
import A6.CollapseSurfaces
import A7.CollapseInvariants
import Mathlib.Geometry.Manifold.Basic

namespace Consistency

variable {M W : Type} [SmoothManifold M]

structure ConsistencyA6A7 :=
  (φ : A6.ScalarField M)
  (E : A6.EvolutionOperator M)
  (IΣ : A7.CollapseInvariant W)

  /-- Collapse surfaces must be regular (A6 theorem). -/
  (collapse_regular :
    A6.collapse_surface_regular φ E = True)

  /-- Collapse-surface invariants must be preserved (A7 theorem). -/
  (invariant_preserved :
    ∀ w : W, A7.collapse_invariant_preserved IΣ w = True)

end Consistency
