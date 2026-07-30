import canonicalLaneMathlib.AdmissibleClass

/-!
# Final Theorem: Determinism Lemma Closure

The constrained determinism closure is the conjunction of bridge and gate.
-/

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def ConstrainedDeterminismClosure (A : DeterminismAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_determinism_endgame (A : DeterminismAdmissibleClass) :
    ConstrainedDeterminismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse