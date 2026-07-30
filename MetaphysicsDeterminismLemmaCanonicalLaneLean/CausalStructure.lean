import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure CausalStructurePackage where
  timeLike : Type u
  lightLike : Type v
  spaceLike : Type w
  causalOrder : Prop
  lightConeStructure : Prop
  timeOrientation : Prop

structure CausalStructureEvidence (C : CausalStructurePackage) where
  causalOrderClosed : C.causalOrder
  lightConeStructureClosed : C.lightConeStructure
  timeOrientationClosed : C.timeOrientation

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.causalOrder ∧ C.lightConeStructure ∧ C.timeOrientation

theorem causal_structure_closed_from_evidence (C : CausalStructurePackage)
    (E : CausalStructureEvidence C) : CausalStructureClosed C :=
  And.intro E.causalOrderClosed
    (And.intro E.lightConeStructureClosed E.timeOrientationClosed)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse