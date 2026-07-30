import MetaphysicsDeterminismLemmaCanonicalLaneLean.DeterminismBridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

def gateClosed (A : DeterminismAdmittedObject) : Prop :=
  A.initialCondition ∨ A.uniqueEvolution

theorem gate_from_admissible_class (A : DeterminismAdmittedObject) :
    gateClosed A :=
  Or.inr A.conclusion

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
