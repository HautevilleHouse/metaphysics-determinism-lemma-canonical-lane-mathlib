import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure CompatibilistBridgePackage where
  freeWillConstraint : Prop
  determinismConstraint : Prop
  compatibilityCondition : freeWillConstraint → determinismConstraint → Prop
  bridgeConclusion : Prop

structure CompatibilistBridgeEvidence (C : CompatibilistBridgePackage) where
  compatibilityConditionClosed : C.compatibilityCondition → Prop
  bridgeConclusionClosed : C.bridgeConclusion

def CompatibilistBridgeClosed (C : CompatibilistBridgePackage) : Prop :=
  C.bridgeConclusion

theorem compatibilist_bridge_closed_from_evidence (C : CompatibilistBridgePackage)
    (E : CompatibilistBridgeEvidence C) : CompatibilistBridgeClosed C := by
  exact E.bridgeConclusionClosed

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse