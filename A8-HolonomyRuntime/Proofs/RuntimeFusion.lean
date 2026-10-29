/-
A8 Holonomy-Runtime — Runtime Fusion Reversibility Proof
Author: Borealis Serenity Hedling
Date: 29 October 2026

This file contains the actual proof of the runtime_fusion_reversible theorem.
It uses only altitude-local definitions: runtime fusion operators and reversible
runtime operators. The proof is structural: reversibility is encoded directly
in the fusion operator.
-/

import A8.Theorems
import A8.RuntimeFusion
import A8.ReversibleRuntime

namespace A8

variable {W : Type}

/--
Theorem: Runtime fusion preserves reversibility.

If F is a runtime fusion operator and R is a reversible runtime operator,
then the fused state F(R, w) is reversible.

This is a direct structural proof: reversibility is part of the fusion operator.
-/
theorem runtime_fusion_reversible
  (F : RuntimeFusionOperator W)
  (R : ReversibleRuntimeOperator W)
  (w : W) :
  R (F R w) :=
by
  -- The reversibility property is embedded in the structure of F.
  simpa using F.reversible R w

end A8
