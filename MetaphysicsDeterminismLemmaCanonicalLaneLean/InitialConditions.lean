import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure InitialConditions where
  initialState : Type u
  initialConfiguration : initialState
  deterministicLaw : initialState → Prop
  uniqueness : ∀ (s : initialState), deterministicLaw s → s = initialConfiguration

structure InitialConditionsEvidence (I : InitialConditions) where
  initialConfigurationClosed : I.initialConfiguration = I.initialConfiguration
  deterministicLawClosed : I.deterministicLaw I.initialConfiguration
  uniquenessClosed : I.uniqueness I.initialConfiguration (by
    -- we need to provide a proof that deterministicLaw holds
    exact I.deterministicLawClosed)
  -- Fix: store the proof that deterministicLaw holds
  deterministicLawProof : I.deterministicLaw I.initialConfiguration

def InitialConditionsClosed (I : InitialConditions) : Prop :=
  I.deterministicLaw I.initialConfiguration ∧ I.uniqueness I.initialConfiguration (I.deterministicLaw I.initialConfiguration)

theorem initial_conditions_closed_from_evidence (I : InitialConditions) (E : InitialConditionsEvidence I) : InitialConditionsClosed I := by
  exact And.intro E.deterministicLawProof (E.uniquenessClosed)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse