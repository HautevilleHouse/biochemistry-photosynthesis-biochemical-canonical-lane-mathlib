import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosynthesisAdmittedObject where
  reactionNetwork : Type
  thermodynamicEquilibrium : Prop
  kineticRateLaws : Prop
  molecularOrbitalModel : Prop
  conclusion : thermodynamicEquilibrium ∧ kineticRateLaws ∧ molecularOrbitalModel

structure PhotosynthesisEndgameState where
  object : PhotosynthesisAdmittedObject

def PhotosynthesisWitnessClosed (O : PhotosynthesisAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : PhotosynthesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PhotosynthesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse