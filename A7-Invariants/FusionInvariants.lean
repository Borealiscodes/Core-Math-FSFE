/-
A7 Invariant Layer
Fusion Invariants
Author: Borealis Serenity Hedling
Date: 28 October 2026
-/

import A7.OperatorInvariants

namespace A7

variable {W : Type}

-- Fusion operator: tensor-like combination of reversible operators
structure FusionOperator :=
  (O₁ : ReversibleOperator W)
  (O₂ : ReversibleOperator W)
  (map : W → W := fun w => O₁.map (O₂.map w))

-- Fusion invariant: I(O_fuse(w)) = I(w)
structure FusionInvariant :=
  (I : W → ℝ)
  (preserved :
    ∀ (F : FusionOperator W) (w : W),
      I (F.map w) = I w)

end A7
