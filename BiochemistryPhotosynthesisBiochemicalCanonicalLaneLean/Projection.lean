import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PhotosynthesisEndgameState where
  object : AdmittedObject

def photosynthesisProjection : Projection PhotosynthesisEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem photosynthesis_projection_idempotent (x : PhotosynthesisEndgameState) :
    photosynthesisProjection.toFun (photosynthesisProjection.toFun x) = photosynthesisProjection.toFun x := by
  exact photosynthesisProjection.idempotent x

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse