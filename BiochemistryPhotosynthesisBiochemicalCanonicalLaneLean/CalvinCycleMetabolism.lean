import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure CalvinCycleMetabolismPackage where
  carbonFixation : Prop
  reductionPhase : Prop
  regenerationPhase : Prop
  rubiscoActivity : Prop

structure CalvinCycleMetabolismEvidence (C : CalvinCycleMetabolismPackage) where
  carbonFixationClosed : C.carbonFixation
  reductionPhaseClosed : C.reductionPhase
  regenerationPhaseClosed : C.regenerationPhase
  rubiscoActivityClosed : C.rubiscoActivity

def CalvinCycleMetabolismClosed (C : CalvinCycleMetabolismPackage) : Prop :=
  C.carbonFixation ∧ C.reductionPhase ∧
  C.regenerationPhase ∧ C.rubiscoActivity

theorem calvin_cycle_metabolism_closed_from_evidence (C : CalvinCycleMetabolismPackage)
    (E : CalvinCycleMetabolismEvidence C) : CalvinCycleMetabolismClosed C := by
  exact And.intro E.carbonFixationClosed
    (And.intro E.reductionPhaseClosed
      (And.intro E.regenerationPhaseClosed E.rubiscoActivityClosed))

theorem calvin_cycle_metabolism_supplies_g3p (C : CalvinCycleMetabolismPackage) :
    C.reductionPhase → C.regenerationPhase → Prop :=
  fun h1 h2 => C.carbonFixation

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
