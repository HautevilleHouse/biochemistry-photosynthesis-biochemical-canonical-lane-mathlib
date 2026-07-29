import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.BiochemistryAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure LightReactionsPackage where
  photonCapture : Prop
  chargeSeparation : Prop
  electronTransport : Prop
  oxygenEvolution : Prop

structure LightReactionsEvidence (L : LightReactionsPackage) where
  photonCaptureClosed : L.photonCapture
  chargeSeparationClosed : L.chargeSeparation
  electronTransportClosed : L.electronTransport
  oxygenEvolutionClosed : L.oxygenEvolution

def LightReactionsClosed (L : LightReactionsPackage) : Prop :=
  L.photonCapture ∧ L.chargeSeparation ∧ L.electronTransport ∧ L.oxygenEvolution

theorem light_reactions_closed_from_evidence (L : LightReactionsPackage) (E : LightReactionsEvidence L) : LightReactionsClosed L := by
  exact And.intro E.photonCaptureClosed (And.intro E.chargeSeparationClosed (And.intro E.electronTransportClosed E.oxygenEvolutionClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse