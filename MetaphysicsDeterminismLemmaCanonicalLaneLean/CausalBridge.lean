import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DeterminismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse