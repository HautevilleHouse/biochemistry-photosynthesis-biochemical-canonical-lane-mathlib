import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ThermodynamicCouplingPackage where
  energyGradient : Prop
  redoxPotential : Prop
  protonMotiveForce : Prop
  gibbsFreeEnergy : Prop

structure ThermodynamicCouplingEvidence (T : ThermodynamicCouplingPackage) where
  energyGradientClosed : T.energyGradient
  redoxPotentialClosed : T.redoxPotential
  protonMotiveForceClosed : T.protonMotiveForce
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy

def ThermodynamicCouplingClosed (T : ThermodynamicCouplingPackage) : Prop :=
  T.energyGradient ∧ T.redoxPotential ∧
  T.protonMotiveForce ∧ T.gibbsFreeEnergy

theorem thermodynamic_coupling_closed_from_evidence (T : ThermodynamicCouplingPackage)
    (E : ThermodynamicCouplingEvidence T) : ThermodynamicCouplingClosed T := by
  exact And.intro E.energyGradientClosed
    (And.intro E.redoxPotentialClosed
      (And.intro E.protonMotiveForceClosed E.gibbsFreeEnergyClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
