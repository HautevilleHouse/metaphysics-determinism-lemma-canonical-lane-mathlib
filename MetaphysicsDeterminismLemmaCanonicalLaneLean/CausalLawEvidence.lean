import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure CausalLawEvidence (A : AdmissibleClass) where
  bridgeClosedTerm : bridgeClosed A
  gateClosedTerm : gateClosed A

def CausalLawClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem causal_law_closed_from_evidence (A : AdmissibleClass) (E : CausalLawEvidence A) :
    CausalLawClosure A := by
  exact And.intro E.bridgeClosedTerm E.gateClosedTerm

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse