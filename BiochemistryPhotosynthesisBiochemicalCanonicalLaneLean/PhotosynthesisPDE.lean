import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosynthesisPDEPackage where
  timeVariable : Type
  spatialVariable : Type
  lightIntensity : Type
  concentrationCO2 : Type
  concentrationO2 : Type
  reactionDiffusionEquation : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  solutionExistence : Prop

structure PhotosynthesisPDEEvidence (P : PhotosynthesisPDEPackage) where
  reactionDiffusionEquationClosed : P.reactionDiffusionEquation
  boundaryConditionsClosed : P.boundaryConditions
  initialConditionsClosed : P.initialConditions
  solutionExistenceClosed : P.solutionExistence

def PhotosynthesisPDEClosed (P : PhotosynthesisPDEPackage) : Prop :=
  P.reactionDiffusionEquation ∧
  P.boundaryConditions ∧
  P.initialConditions ∧
  P.solutionExistence

theorem photosynthesis_pde_closed_from_evidence (P : PhotosynthesisPDEPackage) (E : PhotosynthesisPDEEvidence P) :
    PhotosynthesisPDEClosed P := by
  exact And.intro E.reactionDiffusionEquationClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.initialConditionsClosed E.solutionExistenceClosed))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse