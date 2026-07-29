import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightReactionsPackage where
  photosystemII : Prop
  photosystemI : Prop
  electronTransportChain : Prop
  atpSynthase : Prop
  oxygenEvolution : Prop
  nadphProduction : Prop

structure LightReactionsEvidence (L : LightReactionsPackage) where
  photosystemIIClosed : L.photosystemII
  photosystemIClosed : L.photosystemI
  electronTransportChainClosed : L.electronTransportChain
  atpSynthaseClosed : L.atpSynthase
  oxygenEvolutionClosed : L.oxygenEvolution
  nadphProductionClosed : L.nadphProduction

def LightReactionsClosed (L : LightReactionsPackage) : Prop :=
  L.photosystemII ∧ L.photosystemI ∧ L.electronTransportChain ∧ L.atpSynthase ∧ L.oxygenEvolution ∧ L.nadphProduction

theorem light_reactions_closed_from_evidence (L : LightReactionsPackage) (E : LightReactionsEvidence L) : LightReactionsClosed L := by
  exact And.intro E.photosystemIIClosed
    (And.intro E.photosystemIClosed
      (And.intro E.electronTransportChainClosed
        (And.intro E.atpSynthaseClosed
          (And.intro E.oxygenEvolutionClosed E.nadphProductionClosed))))

structure CalvinCyclePackage where
  rubiscoActivity : Prop
  carbonFixation : Prop
  reductionPhase : Prop
  regenerationPhase : Prop
  g3pProduction : Prop

structure CalvinCycleEvidence (C : CalvinCyclePackage) where
  rubiscoActivityClosed : C.rubiscoActivity
  carbonFixationClosed : C.carbonFixation
  reductionPhaseClosed : C.reductionPhase
  regenerationPhaseClosed : C.regenerationPhase
  g3pProductionClosed : C.g3pProduction

def CalvinCycleClosed (C : CalvinCyclePackage) : Prop :=
  C.rubiscoActivity ∧ C.carbonFixation ∧ C.reductionPhase ∧ C.regenerationPhase ∧ C.g3pProduction

theorem calvin_cycle_closed_from_evidence (C : CalvinCyclePackage) (E : CalvinCycleEvidence C) : CalvinCycleClosed C := by
  exact And.intro E.rubiscoActivityClosed
    (And.intro E.carbonFixationClosed
      (And.intro E.reductionPhaseClosed
        (And.intro E.regenerationPhaseClosed E.g3pProductionClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse