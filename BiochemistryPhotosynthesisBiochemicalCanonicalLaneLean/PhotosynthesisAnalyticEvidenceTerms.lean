import HautevilleHouse.BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.PhotosynthesisAnalyticProof

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightHarvestingEvidenceTerms {L : LightHarvestingPackage} (C : LightHarvestingAnalyticCertificate L) where
  antennaEfficiency : C.antennaEfficiency
  energyTransferRate : C.energyTransferRate
  trappingKinetics : C.trappingKinetics
  quantumYield : C.quantumYield
  lightHarvestingClosed : LightHarvestingClosed L

def LightHarvestingAnalyticCertificate.evidenceTerms {L : LightHarvestingPackage}
    (C : LightHarvestingAnalyticCertificate L) : LightHarvestingEvidenceTerms C := {
  antennaEfficiency := C.antennaEfficiencyClosed
  energyTransferRate := C.energyTransferRateClosed
  trappingKinetics := C.trappingKineticsClosed
  quantumYield := C.quantumYieldClosed
  lightHarvestingClosed := light_harvesting_closed_from_evidence L C.lightHarvestingEvidence
}

structure ReactionCenterEvidenceTerms {R : ReactionCenterPackage} (C : ReactionCenterAnalyticCertificate R) where
  chargeSeparationEfficiency : C.chargeSeparationEfficiency
  electronTransferRate : C.electronTransferRate
  recombinationLoss : C.recombinationLoss
  reactionCenterClosed : ReactionCenterClosed R

def ReactionCenterAnalyticCertificate.evidenceTerms {R : ReactionCenterPackage}
    (C : ReactionCenterAnalyticCertificate R) : ReactionCenterEvidenceTerms C := {
  chargeSeparationEfficiency := C.chargeSeparationEfficiencyClosed
  electronTransferRate := C.electronTransferRateClosed
  recombinationLoss := C.recombinationLossClosed
  reactionCenterClosed := reaction_center_closed_from_evidence R C.reactionCenterEvidence
}

structure CalvinCycleEvidenceTerms {C : CalvinCyclePackage} (P : CalvinCycleAnalyticCertificate C) where
  rubiscoActivity : P.rubiscoActivity
  carbonFixationRate : P.carbonFixationRate
  regenerationEfficiency : P.regenerationEfficiency
  calvinCycleClosed : CalvinCycleClosed C

def CalvinCycleAnalyticCertificate.evidenceTerms {C : CalvinCyclePackage}
    (P : CalvinCycleAnalyticCertificate C) : CalvinCycleEvidenceTerms P := {
  rubiscoActivity := P.rubiscoActivityClosed
  carbonFixationRate := P.carbonFixationRateClosed
  regenerationEfficiency := P.regenerationEfficiencyClosed
  calvinCycleClosed := calvin_cycle_closed_from_evidence C P.calvinCycleEvidence
}

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
