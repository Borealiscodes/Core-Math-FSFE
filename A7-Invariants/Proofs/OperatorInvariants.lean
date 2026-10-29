/-
A7 Invariants — Operator Invariant Preservation Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026 

This file contains the actual proof of the operator_invariant_preserved theorem.
It uses only altitude-local definitions: operator invariants and reversible
operators. The proof is structural: preservation is encoded in the invariant.
-/

import A7.Theorems
import A7.OperatorInvariants

namespace A7

variable {W : Type}

/--
Theorem: Operator invariants are preserved under reversible operators.

If I is an operator invariant and R is a reversible operator,
then I is preserved under the action of R.

This is a direct structural proof: preservation is part of the invariant.
-/
theorem operator_invariant_preserved
  (I : OperatorInvariant W)
  (R : ReversibleOperator W)
  (w : W) :
  I (R w) :=
by
  -- The invariant preservation property is embedded in the structure of I.
  simpa using I.preserve R w

end A7
