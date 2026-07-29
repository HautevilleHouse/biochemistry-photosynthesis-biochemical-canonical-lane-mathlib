import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ReactionStabilityPackage where
  rateConstantSensitivity : Prop
  temperatureRobustness : Prop
  phTolerance : Prop
  lightIntensityStability : Prop

structure ReactionStabilityEvidence (R : ReactionStabilityPackage) where
  rateConstantSensitivityClosed : R.rateConstantSensitivity
  temperatureRobustnessClosed : R.temperatureRobustness
  phToleranceClosed : R.phTolerance
  lightIntensityStabilityClosed : R.lightIntensityStability

def ReactionStabilityClosed (R : ReactionStabilityPackage) : Prop :=
  R.rateConstantSensitivity ∧ R.temperatureRobustness ∧ R.phTolerance ∧ R.lightIntensityStability

theorem reaction_stability_closed_from_evidence (R : ReactionStabilityPackage) (E : ReactionStabilityEvidence R) :
    ReactionStabilityClosed R := by
  exact And.intro E.rateConstantSensitivityClosed
    (And.intro E.temperatureRobustnessClosed
      (And.intro E.phToleranceClosed E.lightIntensityStabilityClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
