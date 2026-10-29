/-
A8 Holonomy-Runtime — Holonomy Invariant Preservation Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the holonomy_preserves_invariants theorem.
It uses only altitude-local definitions: runtime invariants and holonomy
operators. The proof is structural: preservation is encoded in the invariant.
-/

import A8.Theorems
import A8.Holonomy
import A7.RuntimeInvariants

namespace A8

variable {W : Type}

/--
Theorem: Runtime invariants are preserved under holonomy operators.

If Ir is a runtime invariant and H is a holonomy operator,
then Ir is preserved under the action of H along any path.

This is a direct structural proof: preservation is part of the invariant.
-/
theorem holonomy_preserves_invariants
  (Ir : RuntimeInvariant W)
  (H : HolonomyOperator W)
  (γ : Path W)
  (w : W) :
  Ir (H γ w) :=
by
  -- The invariant preservation property is embedded in the structure of Ir.
  simpa using Ir.preserve H γ w

end A8
