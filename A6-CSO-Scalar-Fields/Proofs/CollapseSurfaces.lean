/-
A6 Geometry — Collapse Surface Regularity Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the collapse_surface_regular theorem.
It uses only altitude-local definitions: scalar fields, evolution operators,
and collapse surfaces. The proof relies on Mathlib's implicit function theorem.
-/

import A6.Theorems
import A6.CollapseSurfaces
import Mathlib.Geometry.Manifold.SmoothMap
import Mathlib/Analysis/Calculus/ImplicitFunction

namespace A6

variable {M : Type} [SmoothManifold M]

/--
Theorem: A collapse surface Σ = {x : φ(x) = c} is a smooth hypersurface
whenever the gradient ∇φ is nonvanishing on Σ.

This follows from the implicit function theorem applied to the level set of φ.
-/
theorem collapse_surface_regular
  (φ : ScalarField M)
  (c : ℝ)
  (hgrad : ∀ x ∈ {x | φ x = c}, ∇φ x ≠ 0) :
  SmoothCollapseSurface φ c :=
by
  -- The collapse surface is the level set of a smooth scalar field.
  -- Regularity follows from the implicit function theorem:
  -- a level set of a smooth function with nonvanishing gradient is a smooth hypersurface.
  refine SmoothCollapseSurface.ofImplicitFunction φ c ?regularity
  intro x hx
  simpa using hgrad x hx

end A6
