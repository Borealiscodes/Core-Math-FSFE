/-
A6 Scalar-Field Geometry
Projection Seeds
Author: Borealis Serenity Hedling
Date: 28 October 2026
-/

import Mathlib.Geometry.Manifold.Basic
import A6.CollapseSurfaces

namespace A6

structure ProjectionSeed {M : Type} [SmoothManifold M]
  (φ : ScalarField M) :=
  (Σ : Set M)
  (const_on_surface : ∀ x ∈ Σ, ∀ y ∈ Σ, φ x = φ y)
  (grad_zero : ∀ x ∈ Σ, ∇ φ x = 0)

end A6
