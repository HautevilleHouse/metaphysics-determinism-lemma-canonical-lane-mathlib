import MetaphysicsDeterminismLemmaCanonicalLaneLean.DeterminismStateSpace

namespace HautevilleHouse
namespace MetaphysicsDeterminismLemmaCanonicalLaneLean

structure DeterminismProjection where
  toFun : DeterminismAdmittedObject → DeterminismAdmittedObject
  idempotent : ∀ x, toFun (toFun x) = toFun x

def determinismProjection : DeterminismProjection :=
  { toFun := id
    idempotent := λ _ => rfl }

theorem determinism_projection_idempotent (x : DeterminismAdmittedObject) :
    determinismProjection.toFun (determinismProjection.toFun x) = determinismProjection.toFun x :=
  determinismProjection.idempotent x

end MetaphysicsDeterminismLemmaCanonicalLaneLean
end HautevilleHouse
