import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterministicState where
  carrier : Type
  causality : Prop
  lawfulness : Prop
  freeWillOption : Prop
  determinismConclusion : Prop

structure DeterminismAdmittedObject where
  state : DeterministicState
  causalClosure : Prop
  lemmaStatement : Prop
  conclusion : lemmaStatement

def DeterminismWitnessClosed (O : DeterminismAdmittedObject) : Prop :=
  O.lemmaStatement

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse