import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure FreeWillLemma where
  premise : Prop
  conclusion : Prop
  proofTerm : premise → conclusion

structure FreeWillEvidence (L : FreeWillLemma) where
  premiseClosed : L.premise
  conclusionClosed : L.conclusion

def FreeWillLemmaClosed (L : FreeWillLemma) : Prop :=
  L.premise → L.conclusion

theorem free_will_lemma_closed_from_evidence (L : FreeWillLemma) (E : FreeWillEvidence L) :
    FreeWillLemmaClosed L := by
  intro h
  exact L.proofTerm h

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse