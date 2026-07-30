import canonicalLaneMathlib.AdmissibleClass

/-!
# Bridge Lemmas for Determinism

The bridge lemma states that the deterministic evolution is closed under the
admissible class.
-/

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def bridgeClosed (A : DeterminismAdmissibleClass) : Prop :=
  DeterminismWitnessClosed A.object

theorem bridge_from_admissible_class (A : DeterminismAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : DeterminismAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DeterminismAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse