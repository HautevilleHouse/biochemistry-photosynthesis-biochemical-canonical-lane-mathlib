import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ChlorophyllMoleculePackage where
  porphyrinRing : Prop
  magnesiumIon : Prop
  absorptionSpectrum : Prop
  excitedState : Prop

structure ChlorophyllMoleculeEvidence (C : ChlorophyllMoleculePackage) where
  porphyrinRingClosed : C.porphyrinRing
  magnesiumIonClosed : C.magnesiumIon
  absorptionSpectrumClosed : C.absorptionSpectrum
  excitedStateClosed : C.excitedState

def ChlorophyllMoleculeClosed (C : ChlorophyllMoleculePackage) : Prop :=
  C.porphyrinRing ∧ C.magnesiumIon ∧
  C.absorptionSpectrum ∧ C.excitedState

theorem chlorophyll_molecule_closed_from_evidence (C : ChlorophyllMoleculePackage)
    (E : ChlorophyllMoleculeEvidence C) : ChlorophyllMoleculeClosed C := by
  exact And.intro E.porphyrinRingClosed
    (And.intro E.magnesiumIonClosed
      (And.intro E.absorptionSpectrumClosed E.excitedStateClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
