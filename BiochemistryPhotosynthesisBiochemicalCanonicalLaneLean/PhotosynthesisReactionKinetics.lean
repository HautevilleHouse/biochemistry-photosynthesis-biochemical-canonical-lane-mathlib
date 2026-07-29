import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : Type u
  michaelisMentenEquation : Prop
  substrateConcentration : Prop
  productFormationRate : Prop
  lightDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  michaelisMentenEquationClosed : R.michaelisMentenEquation
  substrateConcentrationClosed : R.substrateConcentration
  productFormationRateClosed : R.productFormationRate
  lightDependenceClosed : R.lightDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.michaelisMentenEquation ∧ R.substrateConcentration ∧ R.productFormationRate ∧ R.lightDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.michaelisMentenEquationClosed
    (And.intro E.substrateConcentrationClosed
      (And.intro E.productFormationRateClosed E.lightDependenceClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse