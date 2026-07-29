import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PhotosynthesisObject where
  thylakoidMembrane : Type
  stroma : Type
  lightReaction : Prop
  calvinCycle : Prop
  oxygenReleased : Prop
  glucoseProduced : Prop
  conclusion : oxygenReleased ∧ glucoseProduced

structure PhotosynthesisAdmissibleClass where
  object : PhotosynthesisObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : PhotosynthesisAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse