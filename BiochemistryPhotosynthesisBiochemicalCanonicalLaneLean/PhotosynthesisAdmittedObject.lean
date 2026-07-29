import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PhotosynthesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhotosynthesisAdmittedObject where
  space : PhotosynthesisSpace
  chloroplastPresent : Prop
  lightReactionsFunctional : Prop
  calvinCycleFunctional : Prop
  atpSynthaseActive : Prop
  conclusion : lightReactionsFunctional ∧ calvinCycleFunctional ∧ atpSynthaseActive

structure PhotosynthesisEndgameState where
  object : PhotosynthesisAdmittedObject

def PhotosynthesisWitnessClosed (O : PhotosynthesisAdmittedObject) : Prop :=
  O.lightReactionsFunctional ∧ O.calvinCycleFunctional ∧ O.atpSynthaseActive

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse