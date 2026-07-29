import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.Photosystem

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightReactionPackage {P : PhotosystemPackage} where
  photonAbsorption : Prop
  waterSplitting : Prop
  electronFlow : Prop
  protonGradient : Prop
  atpSynthesis : Prop

structure LightReactionEvidence {P : PhotosystemPackage} (L : LightReactionPackage P) where
  photonAbsorptionClosed : L.photonAbsorption
  waterSplittingClosed : L.waterSplitting
  electronFlowClosed : L.electronFlow
  protonGradientClosed : L.protonGradient
  atpSynthesisClosed : L.atpSynthesis

def LightReactionClosed {P : PhotosystemPackage} (L : LightReactionPackage P) : Prop :=
  L.photonAbsorption ∧ L.waterSplitting ∧ L.electronFlow ∧ L.protonGradient ∧ L.atpSynthesis

theorem light_reaction_closed_from_evidence {P : PhotosystemPackage} (L : LightReactionPackage P) (E : LightReactionEvidence L) : LightReactionClosed L := by
  exact And.intro E.photonAbsorptionClosed
    (And.intro E.waterSplittingClosed
      (And.intro E.electronFlowClosed
        (And.intro E.protonGradientClosed E.atpSynthesisClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
