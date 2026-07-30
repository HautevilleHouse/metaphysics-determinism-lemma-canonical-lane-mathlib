import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterminismStateSpace where
  carrier : Type u
  stateSpaceTopology : TopologicalSpace carrier
  stateTransition : carrier → carrier → Prop
  determinismCondition : Prop

structure DeterminismAdmittedObject where
  stateSpace : DeterminismStateSpace
  initialCondition : Prop
  uniqueEvolution : Prop
  conclusion : uniqueEvolution

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
