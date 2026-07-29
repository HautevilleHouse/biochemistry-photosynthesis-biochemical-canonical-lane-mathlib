import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosystemComplexPackage where
  photosystemII : Prop
  cytochromeB6f : Prop
  photosystemI : Prop
  atpSynthase : Prop

structure PhotosystemComplexEvidence (P : PhotosystemComplexPackage) where
  photosystemIIClosed : P.photosystemII
  cytochromeB6fClosed : P.cytochromeB6f
  photosystemIClosed : P.photosystemI
  atpSynthaseClosed : P.atpSynthase

def PhotosystemComplexClosed (P : PhotosystemComplexPackage) : Prop :=
  P.photosystemII ∧ P.cytochromeB6f ∧
  P.photosystemI ∧ P.atpSynthase

theorem photosystem_complex_closed_from_evidence (P : PhotosystemComplexPackage)
    (E : PhotosystemComplexEvidence P) : PhotosystemComplexClosed P := by
  exact And.intro E.photosystemIIClosed
    (And.intro E.cytochromeB6fClosed
      (And.intro E.photosystemIClosed E.atpSynthaseClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
