import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  photonEnergyConversion : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  photonEnergyConversionClosed : T.photonEnergyConversion

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.photonEnergyConversion

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.enthalpyChangeClosed
        (And.intro E.entropyChangeClosed E.photonEnergyConversionClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse