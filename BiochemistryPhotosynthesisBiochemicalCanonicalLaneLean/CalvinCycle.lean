import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.LightReaction

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure CalvinCyclePackage {P : PhotosystemPackage} {L : LightReactionPackage P} where
  carbonFixation : Prop
  reductionPhase : Prop
  regenerationPhase : Prop
  rubiscoActivity : Prop
  productSynthesis : Prop

structure CalvinCycleEvidence {P : PhotosystemPackage} {L : LightReactionPackage P} (C : CalvinCyclePackage L) where
  carbonFixationClosed : C.carbonFixation
  reductionPhaseClosed : C.reductionPhase
  regenerationPhaseClosed : C.regenerationPhase
  rubiscoActivityClosed : C.rubiscoActivity
  productSynthesisClosed : C.productSynthesis

def CalvinCycleClosed {P : PhotosystemPackage} {L : LightReactionPackage P} (C : CalvinCyclePackage L) : Prop :=
  C.carbonFixation ∧ C.reductionPhase ∧ C.regenerationPhase ∧ C.rubiscoActivity ∧ C.productSynthesis

theorem calvin_cycle_closed_from_evidence {P : PhotosystemPackage} {L : LightReactionPackage P} (C : CalvinCyclePackage L) (E : CalvinCycleEvidence C) : CalvinCycleClosed C := by
  exact And.intro E.carbonFixationClosed
    (And.intro E.reductionPhaseClosed
      (And.intro E.regenerationPhaseClosed
        (And.intro E.rubiscoActivityClosed E.productSynthesisClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
