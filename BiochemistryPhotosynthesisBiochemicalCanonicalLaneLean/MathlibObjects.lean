import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosynthesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhotosynthesisAdmittedObject where
  system : PhotosynthesisSpace
  efficientConversion : Prop
  lightHarvestingCapacity : Prop
  conclusion : efficientConversion ∧ lightHarvestingCapacity

structure PhotosynthesisEndgameState where
  object : PhotosynthesisAdmittedObject

def PhotosynthesisWitnessClosed (O : PhotosynthesisAdmittedObject) : Prop :=
  O.efficientConversion ∧ O.lightHarvestingCapacity

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
