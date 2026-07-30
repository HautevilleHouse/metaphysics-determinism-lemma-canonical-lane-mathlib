import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure FreeWillBridgePackage where
  agentChoiceSpace : Type u
  alternativePossibilities : Prop
  causalIndependence : Prop
  determinismCompatibility : Prop

structure FreeWillBridgeEvidence (F : FreeWillBridgePackage) where
  alternativePossibilitiesClosed : F.alternativePossibilities
  causalIndependenceClosed : F.causalIndependence
  determinismCompatibilityClosed : F.determinismCompatibility

def FreeWillBridgeClosed (F : FreeWillBridgePackage) : Prop :=
  F.alternativePossibilities ∧ F.causalIndependence ∧ F.determinismCompatibility

theorem free_will_bridge_closed_from_evidence (F : FreeWillBridgePackage)
    (E : FreeWillBridgeEvidence F) : FreeWillBridgeClosed F :=
  And.intro E.alternativePossibilitiesClosed
    (And.intro E.causalIndependenceClosed E.determinismCompatibilityClosed)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse