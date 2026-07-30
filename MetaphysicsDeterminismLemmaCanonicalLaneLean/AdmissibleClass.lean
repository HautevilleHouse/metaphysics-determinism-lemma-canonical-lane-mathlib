import MetaphysicsDeterminismLemmaCanonicalLaneLean.DeterminismStateSpace

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DeterminismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
