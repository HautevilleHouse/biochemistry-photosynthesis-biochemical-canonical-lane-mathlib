import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.Photosystem

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ThylakoidMembranePackage {P : PhotosystemPackage} where
  lipidBilayer : Prop
  embeddedComplexes : Prop
  lumenSpace : Prop
  stromaSide : Prop
  protonMotiveForce : Prop

structure ThylakoidMembraneEvidence {P : PhotosystemPackage} (M : ThylakoidMembranePackage P) where
  lipidBilayerClosed : M.lipidBilayer
  embeddedComplexesClosed : M.embeddedComplexes
  lumenSpaceClosed : M.lumenSpace
  stromaSideClosed : M.stromaSide
  protonMotiveForceClosed : M.protonMotiveForce

def ThylakoidMembraneClosed {P : PhotosystemPackage} (M : ThylakoidMembranePackage P) : Prop :=
  M.lipidBilayer ∧ M.embeddedComplexes ∧ M.lumenSpace ∧ M.stromaSide ∧ M.protonMotiveForce

theorem thylakoid_membrane_closed_from_evidence {P : PhotosystemPackage} (M : ThylakoidMembranePackage P) (E : ThylakoidMembraneEvidence M) : ThylakoidMembraneClosed M := by
  exact And.intro E.lipidBilayerClosed
    (And.intro E.embeddedComplexesClosed
      (And.intro E.lumenSpaceClosed
        (And.intro E.stromaSideClosed E.protonMotiveForceClosed)))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
