import MetaphysicsDeterminismLemmaCanonicalLaneLean.DeterminismGateLemmas

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def ConstrainedDeterminismClosure (A : DeterminismAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_determinism_endgame (A : DeterminismAdmittedObject) :
    ConstrainedDeterminismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
