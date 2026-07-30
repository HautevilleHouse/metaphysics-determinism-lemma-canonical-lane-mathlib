import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterminismCorePackage where
  stateSpace : Type u
  evolutionLaw : Prop
  initialCondition : Prop
  uniquenessOfFuture : Prop
  globalDeterminism : Prop

structure DeterminismCoreEvidence (D : DeterminismCorePackage) where
  evolutionLawClosed : D.evolutionLaw
  initialConditionClosed : D.initialCondition
  uniquenessOfFutureClosed : D.uniquenessOfFuture
  globalDeterminismClosed : D.globalDeterminism

def DeterminismCoreClosed (D : DeterminismCorePackage) : Prop :=
  D.evolutionLaw ∧ D.initialCondition ∧ D.uniquenessOfFuture ∧ D.globalDeterminism

theorem determinism_core_closed_from_evidence (D : DeterminismCorePackage)
    (E : DeterminismCoreEvidence D) : DeterminismCoreClosed D :=
  And.intro E.evolutionLawClosed
    (And.intro E.initialConditionClosed
      (And.intro E.uniquenessOfFutureClosed E.globalDeterminismClosed))

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse