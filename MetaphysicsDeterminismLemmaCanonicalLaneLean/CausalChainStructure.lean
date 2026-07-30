import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure CausalChainStructure where
  events : Type u
  causationRelation : events → events → Prop
  transitivity : ∀ {a b c : events}, causationRelation a b → causationRelation b c → causationRelation a c
  irreflexivity : ∀ {a : events}, ¬ causationRelation a a
  localDeterminism : ∀ {a b c : events}, causationRelation a b → causationRelation a c → (causationRelation b c ∨ causationRelation c b ∨ b = c)

structure CausalChainEvidence (C : CausalChainStructure) where
  transitivityClosed : C.transitivity
  irreflexivityClosed : C.irreflexivity
  localDeterminismClosed : C.localDeterminism

def CausalChainClosed (C : CausalChainStructure) : Prop :=
  C.transitivity ∧ C.irreflexivity ∧ C.localDeterminism

theorem causal_chain_closed_from_evidence (C : CausalChainStructure) (E : CausalChainEvidence C) : CausalChainClosed C := by
  exact And.intro E.transitivityClosed (And.intro E.irreflexivityClosed E.localDeterminismClosed)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse