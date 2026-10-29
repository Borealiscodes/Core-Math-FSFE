/-
A7 Invariants — Collapse Invariant Preservation Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the collapse_invariant_preserved theorem.
It uses only altitude-local definitions: collapse invariants and collapse
operators. The proof is structural: preservation is encoded in the invariant.
-/

import A7.Theorems
import A7.CollapseInvariants

namespace A7

variable {W : Type}

/--
Theorem: Collapse invariants are preserved under collapse operators.

If IΣ is a collapse invariant and C is a collapse operator,
then IΣ is preserved under the action of C.

This is a direct structural proof: preservation is part of the invariant.
-/
theorem collapse_invariant_preserved
  (IΣ : CollapseInvariant W)
  (C : CollapseOperator W)
  (w : W) :
  IΣ (C w) :=
by
  -- The invariant preservation property is embedded in the structure of IΣ.
  simpa using IΣ.preserve C w

end A7
