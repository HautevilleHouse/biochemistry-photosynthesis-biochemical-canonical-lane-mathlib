import HautevilleHouse.BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.PhotosynthesisRoute

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightHarvestingAnalyticCertificate (L : LightHarvestingPackage) where
  antennaEfficiency : Prop
  energyTransferRate : Prop
  trappingKinetics : Prop
  quantumYield : Prop
  antennaEfficiencyClosed : antennaEfficiency
  energyTransferRateClosed : energyTransferRate
  trappingKineticsClosed : trappingKinetics
  quantumYieldClosed : quantumYield
  lightHarvestingEvidence : LightHarvestingEvidence L

def LightHarvestingAnalyticCertificateClosed {L : LightHarvestingPackage}
    (C : LightHarvestingAnalyticCertificate L) : Prop :=
  C.antennaEfficiency ∧ C.energyTransferRate ∧ C.trappingKinetics ∧ C.quantumYield ∧ LightHarvestingClosed L

theorem light_harvesting_analytic_certificate_closed
    {L : LightHarvestingPackage} (C : LightHarvestingAnalyticCertificate L) :
    LightHarvestingAnalyticCertificateClosed C := by
  exact And.intro C.antennaEfficiencyClosed
    (And.intro C.energyTransferRateClosed
      (And.intro C.trappingKineticsClosed
        (And.intro C.quantumYieldClosed (light_harvesting_closed_from_evidence L C.lightHarvestingEvidence))))

structure ReactionCenterAnalyticCertificate (R : ReactionCenterPackage) where
  chargeSeparationEfficiency : Prop
  electronTransferRate : Prop
  recombinationLoss : Prop
  chargeSeparationEfficiencyClosed : chargeSeparationEfficiency
  electronTransferRateClosed : electronTransferRate
  recombinationLossClosed : recombinationLoss
  reactionCenterEvidence : ReactionCenterEvidence R

def ReactionCenterAnalyticCertificateClosed {R : ReactionCenterPackage}
    (C : ReactionCenterAnalyticCertificate R) : Prop :=
  C.chargeSeparationEfficiency ∧ C.electronTransferRate ∧ C.recombinationLoss ∧ ReactionCenterClosed R

theorem reaction_center_analytic_certificate_closed
    {R : ReactionCenterPackage} (C : ReactionCenterAnalyticCertificate R) :
    ReactionCenterAnalyticCertificateClosed C := by
  exact And.intro C.chargeSeparationEfficiencyClosed
    (And.intro C.electronTransferRateClosed
      (And.intro C.recombinationLossClosed (reaction_center_closed_from_evidence R C.reactionCenterEvidence)))

structure CalvinCycleAnalyticCertificate (C : CalvinCyclePackage) where
  rubiscoActivity : Prop
  carbonFixationRate : Prop
  regenerationEfficiency : Prop
  rubiscoActivityClosed : rubiscoActivity
  carbonFixationRateClosed : carbonFixationRate
  regenerationEfficiencyClosed : regenerationEfficiency
  calvinCycleEvidence : CalvinCycleEvidence C

def CalvinCycleAnalyticCertificateClosed {C : CalvinCyclePackage}
    (P : CalvinCycleAnalyticCertificate C) : Prop :=
  P.rubiscoActivity ∧ P.carbonFixationRate ∧ P.regenerationEfficiency ∧ CalvinCycleClosed C

theorem calvin_cycle_analytic_certificate_closed
    {C : CalvinCyclePackage} (P : CalvinCycleAnalyticCertificate C) :
    CalvinCycleAnalyticCertificateClosed P := by
  exact And.intro P.rubiscoActivityClosed
    (And.intro P.carbonFixationRateClosed
      (And.intro P.regenerationEfficiencyClosed (calvin_cycle_closed_from_evidence C P.calvinCycleEvidence)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
