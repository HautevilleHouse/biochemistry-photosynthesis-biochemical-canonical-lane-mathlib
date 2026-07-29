import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosystemPackage where
  pigmentComplex : Type u
  reactionCenter : Type v
  lightHarvesting : Prop
  chargeSeparation : Prop
  oxygenEvolution : Prop
  photosystemII : Prop
  photosystemI : Prop

structure PhotosystemEvidence (P : PhotosystemPackage) where
  lightHarvestingClosed : P.lightHarvesting
  chargeSeparationClosed : P.chargeSeparation
  oxygenEvolutionClosed : P.oxygenEvolution
  photosystemIIClosed : P.photosystemII
  photosystemIClosed : P.photosystemI

def PhotosystemClosed (P : PhotosystemPackage) : Prop :=
  P.lightHarvesting ∧ P.chargeSeparation ∧ P.oxygenEvolution ∧ P.photosystemII ∧ P.photosystemI

theorem photosystem_closed_from_evidence (P : PhotosystemPackage) (E : PhotosystemEvidence P) : PhotosystemClosed P := by
  exact And.intro E.lightHarvestingClosed
    (And.intro E.chargeSeparationClosed
      (And.intro E.oxygenEvolutionClosed
        (And.intro E.photosystemIIClosed E.photosystemIClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
