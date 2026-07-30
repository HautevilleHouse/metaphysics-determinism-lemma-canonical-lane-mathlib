import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsDeterminismLemmaCanonicalLaneLean.CausalChainStructure

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterministicBranching (C : CausalChainStructure) where
  branchingEvent : C.events
  branchOne : C.events
  branchTwo : C.events
  branchDifferent : branchOne ≠ branchTwo
  causationToBranchOne : C.causationRelation branchingEvent branchOne
  causationToBranchTwo : C.causationRelation branchingEvent branchTwo
  determinismResolved : C.causationRelation branchOne branchTwo ∨ C.causationRelation branchTwo branchOne

structure DeterministicBranchingEvidence {C : CausalChainStructure} (D : DeterministicBranching C) where
  branchDifferentClosed : D.branchDifferent
  causationToBranchOneClosed : D.causationToBranchOne
  causationToBranchTwoClosed : D.causationToBranchTwo
  determinismResolvedClosed : D.determinismResolved

def DeterministicBranchingClosed {C : CausalChainStructure} (D : DeterministicBranching C) : Prop :=
  D.branchDifferent ∧ D.causationToBranchOne ∧ D.causationToBranchTwo ∧ D.determinismResolved

theorem deterministic_branching_closed_from_evidence {C : CausalChainStructure} (D : DeterministicBranching C) (E : DeterministicBranchingEvidence D) : DeterministicBranchingClosed D := by
  exact And.intro E.branchDifferentClosed
    (And.intro E.causationToBranchOneClosed
      (And.intro E.causationToBranchTwoClosed E.determinismResolvedClosed))

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse