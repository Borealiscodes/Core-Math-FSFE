/-
A6 Geometry — Evolution Smoothness Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the evolution_smooth theorem.
It uses only altitude-local definitions: scalar fields and evolution operators.
-/

import A6.Theorems
import A6.Evolution
import Mathlib.Geometry.Manifold.SmoothMap

namespace A6

variable {M : Type} [SmoothManifold M]

/--
Theorem: Evolution operators preserve smoothness of scalar fields.

If E : C^∞(M) → C^∞(M) is a smooth evolution operator,
and φ is a smooth scalar field on M,
then E(φ) is also smooth.
-/
theorem evolution_smooth
  (φ : ScalarField M)
  (E : EvolutionOperator M) :
  Smooth E φ :=
by
  -- By definition, an EvolutionOperator is a smooth map on scalar fields.
  -- Therefore, applying E to any smooth φ yields a smooth result.
  simpa using E.smooth φ

end A6
