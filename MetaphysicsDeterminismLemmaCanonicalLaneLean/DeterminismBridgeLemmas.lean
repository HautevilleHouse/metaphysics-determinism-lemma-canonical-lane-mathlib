import MetaphysicsDeterminismLemmaCanonicalLaneLean.DeterminismProjection

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def bridgeClosed (A : DeterminismAdmittedObject) : Prop :=
  A.uniqueEvolution

theorem bridge_from_admissible_class (A : DeterminismAdmittedObject) :
    bridgeClosed A :=
  A.conclusion

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
