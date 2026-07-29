import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.PhotosynthesisBridgeGate

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

def ConstrainedPhotosynthesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_photosynthesis_endgame (A : AdmissibleClass) : ConstrainedPhotosynthesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse