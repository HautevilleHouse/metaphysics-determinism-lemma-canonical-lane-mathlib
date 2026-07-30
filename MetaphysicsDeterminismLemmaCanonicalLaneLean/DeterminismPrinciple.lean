import canonicalLaneMathlib.AdmissibleClass

/-!
# Determinism Principle Package

This module defines the logical structure of determinism in metaphysics:
a deterministic system is one where the complete state at any time forces
a unique future. The package records the key theorems as admissible-class
bridge and gate closures.
-/

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterminismObject where
  stateSpace : Type u
  timeDomain : Type v
  transitionFunction : timeDomain → stateSpace → stateSpace
  initialCondition : stateSpace
  uniqueEvolution : Prop

structure DeterminismAdmittedObject where
  object : DeterminismObject
  conclusion : object.uniqueEvolution

def DeterminismWitnessClosed (O : DeterminismAdmittedObject) : Prop :=
  O.conclusion

structure DeterminismAdmissibleClass where
  object : DeterminismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DeterminismAdmissibleClass) : Prop :=
  DeterminismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse