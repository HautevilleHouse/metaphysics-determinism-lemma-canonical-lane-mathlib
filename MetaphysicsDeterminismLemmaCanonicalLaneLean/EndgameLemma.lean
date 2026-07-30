import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

-- Final theorem: Determinism lemma closure

def ConstrainedDeterminismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_determinism_endgame (A : AdmissibleClass) :
    ConstrainedDeterminismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse