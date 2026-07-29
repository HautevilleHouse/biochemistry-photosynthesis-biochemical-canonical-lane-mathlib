import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.LightReactionsPackage

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure CalvinCyclePackage {L : LightReactionsPackage} where
  carbonFixation : Prop
  reductionPhase : Prop
  regenerationPhase : Prop
  glucoseSynthesis : Prop

structure CalvinCycleEvidence {L : LightReactionsPackage} (C : CalvinCyclePackage L) where
  carbonFixationClosed : C.carbonFixation
  reductionPhaseClosed : C.reductionPhase
  regenerationPhaseClosed : C.regenerationPhase
  glucoseSynthesisClosed : C.glucoseSynthesis

def CalvinCycleClosed {L : LightReactionsPackage} (C : CalvinCyclePackage L) : Prop :=
  C.carbonFixation ∧ C.reductionPhase ∧ C.regenerationPhase ∧ C.glucoseSynthesis

theorem calvin_cycle_closed_from_evidence {L : LightReactionsPackage} (C : CalvinCyclePackage L) (E : CalvinCycleEvidence C) : CalvinCycleClosed C := by
  exact And.intro E.carbonFixationClosed (And.intro E.reductionPhaseClosed (And.intro E.regenerationPhaseClosed E.glucoseSynthesisClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse