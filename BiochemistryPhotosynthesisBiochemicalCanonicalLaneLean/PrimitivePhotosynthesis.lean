import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PrimitiveChloroplast where
  thylakoidMembrane : Type
  stroma : Type
  lightHarvestingComplex : Prop
  reactionCenter : Prop
  electronTransportChain : Prop
  atpSynthase : Prop
  membranePotential : Prop
  protonGradient : Prop

structure PrimitiveThylakoidMembrane where
  lipidBilayer : Type
  embeddedProteins : Type
  photosystemII : Type
  photosystemI : Type
  plastoquinone : Type
  cytochromeComplex : Type
  plastocyanin : Type

structure PrimitiveReactionCenter where
  chlorophyllDimer : Type
  pheophytin : Type
  quinone : Type
  chargeSeparationEfficiency : Prop

structure PrimitiveElectronTransportChain where
  donors : Type
  acceptors : Type
  redoxPotentialDifference : Prop
  electronFlowRate : Prop

structure PrimitiveLightHarvestingComplex where
  antennaPigments : Type
  energyTransferEfficiency : Prop
  absorptionSpectrum : Prop

structure PrimitivePhotosystem where
  reactionCenter : PrimitiveReactionCenter
  lightHarvestingComplex : PrimitiveLightHarvestingComplex
  oxygenEvolution : Prop
  atpProduction : Prop
  nadphProduction : Prop

structure PrimitivePhotosynthesisEvidence (P : PrimitivePhotosystem) where
  chargeSeparationEfficiencyClosed : P.reactionCenter.chargeSeparationEfficiency
  energyTransferEfficiencyClosed : P.lightHarvestingComplex.energyTransferEfficiency
  oxygenEvolutionClosed : P.oxygenEvolution
  atpProductionClosed : P.atpProduction
  nadphProductionClosed : P.nadphProduction

def PrimitivePhotosynthesisClosed (P : PrimitivePhotosystem) : Prop :=
  P.reactionCenter.chargeSeparationEfficiency ∧
  P.lightHarvestingComplex.energyTransferEfficiency ∧
  P.oxygenEvolution ∧
  P.atpProduction ∧
  P.nadphProduction

theorem primitive_photosynthesis_closed_from_evidence (P : PrimitivePhotosystem) (E : PrimitivePhotosynthesisEvidence P) : PrimitivePhotosynthesisClosed P := by
  exact And.intro E.chargeSeparationEfficiencyClosed
    (And.intro E.energyTransferEfficiencyClosed
      (And.intro E.oxygenEvolutionClosed
        (And.intro E.atpProductionClosed E.nadphProductionClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse