import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsDeterminismLemmaCanonicalLaneLean.CausalChainStructure
import HautevilleHouse.MetaphysicsDeterminismLemmaCanonicalLaneLean.InitialConditions

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure PredictionLemma (C : CausalChainStructure) (I : InitialConditions) where
  futureState : C.events
  derivation : C.causationRelation I.initialConfiguration futureState
  uniqueness : ∀ (f : C.events), C.causationRelation I.initialConfiguration f → f = futureState

structure PredictionLemmaEvidence {C : CausalChainStructure} {I : InitialConditions} (P : PredictionLemma C I) where
  derivationClosed : P.derivation
  uniquenessClosed : P.uniqueness P.futureState P.derivation

def PredictionLemmaClosed {C : CausalChainStructure} {I : InitialConditions} (P : PredictionLemma C I) : Prop :=
  P.derivation ∧ P.uniqueness P.futureState P.derivation

theorem prediction_lemma_closed_from_evidence {C : CausalChainStructure} {I : InitialConditions} (P : PredictionLemma C I) (E : PredictionLemmaEvidence P) : PredictionLemmaClosed P := by
  exact And.intro E.derivationClosed E.uniquenessClosed

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse