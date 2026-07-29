import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PhotosynthesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse