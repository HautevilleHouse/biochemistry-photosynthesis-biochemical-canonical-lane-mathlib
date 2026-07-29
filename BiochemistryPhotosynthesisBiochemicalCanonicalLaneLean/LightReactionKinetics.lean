import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightReactionKineticsPackage where
  photonAbsorptionRate : Prop
  electronTransportChain : Prop
  waterSplitting : Prop
  atpSynthesis : Prop

structure LightReactionKineticsEvidence (P : LightReactionKineticsPackage) where
  photonAbsorptionRateClosed : P.photonAbsorptionRate
  electronTransportChainClosed : P.electronTransportChain
  waterSplittingClosed : P.waterSplitting
  atpSynthesisClosed : P.atpSynthesis

def LightReactionKineticsClosed (P : LightReactionKineticsPackage) : Prop :=
  P.photonAbsorptionRate ∧ P.electronTransportChain ∧
  P.waterSplitting ∧ P.atpSynthesis

theorem light_reaction_kinetics_closed_from_evidence (P : LightReactionKineticsPackage)
    (E : LightReactionKineticsEvidence P) : LightReactionKineticsClosed P := by
  exact And.intro E.photonAbsorptionRateClosed
    (And.intro E.electronTransportChainClosed
      (And.intro E.waterSplittingClosed E.atpSynthesisClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
