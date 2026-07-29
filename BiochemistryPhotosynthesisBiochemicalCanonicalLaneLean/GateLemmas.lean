import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse