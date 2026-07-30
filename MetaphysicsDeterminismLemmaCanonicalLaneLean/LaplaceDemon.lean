import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure LaplaceDemonPackage where
  universeState : Type u
  knownLaws : Type v
  omniscience : Prop
  completePrediction : Prop
  deterministicLawful : Prop

structure LaplaceDemonEvidence (L : LaplaceDemonPackage) where
  omniscienceClosed : L.omniscience
  completePredictionClosed : L.completePrediction
  deterministicLawfulClosed : L.deterministicLawful

def LaplaceDemonClosed (L : LaplaceDemonPackage) : Prop :=
  L.omniscience ∧ L.completePrediction ∧ L.deterministicLawful

theorem laplace_demon_closed_from_evidence (L : LaplaceDemonPackage)
    (E : LaplaceDemonEvidence L) : LaplaceDemonClosed L := by
  exact And.intro E.omniscienceClosed
    (And.intro E.completePredictionClosed E.deterministicLawfulClosed)

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse