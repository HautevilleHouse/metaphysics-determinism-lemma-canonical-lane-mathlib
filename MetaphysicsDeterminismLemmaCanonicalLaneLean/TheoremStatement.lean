import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsDeterminismLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure MetaphysicsAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  determinismProposition : Prop
  freeWillAlternative : Prop
  lemmaConclusion : Prop
  conclusion : determinismProposition ∨ freeWillAlternative

def MetaphysicsWitnessClosed (O : MetaphysicsAdmittedObject) : Prop :=
  O.lemmaConclusion

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse