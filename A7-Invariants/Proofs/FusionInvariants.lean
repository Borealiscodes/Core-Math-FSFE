/-
A7 Invariants — Fusion Invariant Stability Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the fusion_invariant_stable theorem.
It uses only altitude-local definitions: fusion invariants and fusion operators.
The proof is structural: stability is encoded in the invariant.
-/

import A7.Theorems
import A7.FusionInvariants

namespace A7

variable {W : Type}

/--
Theorem: Fusion invariants remain stable under fusion operators.

If If is a fusion invariant and F is a fusion operator,
then If is preserved under the action of F.

This is a direct structural proof: stability is part of the invariant.
-/
theorem fusion_invariant_stable
  (If : FusionInvariant W)
  (F : FusionOperator W)
  (w : W) :
  If (F w) :=
by
  -- The stability property is embedded in the structure of If.
  simpa using If.stable F w

end A7
