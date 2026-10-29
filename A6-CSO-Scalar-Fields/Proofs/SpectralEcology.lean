/-
A6 Geometry — Spectral Normalization Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the spectral_normalized theorem.
It uses only altitude-local definitions: spectral coefficients and their
normalization property.
-/

import A6.Theorems
import A6.SpectralEcology

namespace A6

/--
Theorem: Every spectral coefficient λ satisfies the altitude-normalization
constraint encoded in its definition.

This is a direct structural proof: normalization is part of the λ constructor.
-/
theorem spectral_normalized
  (λ : SpectralCoefficient) :
  λ.normalized :=
by
  -- Normalization is guaranteed by the structure of SpectralCoefficient.
  simpa using λ.isNormalized

end A6
