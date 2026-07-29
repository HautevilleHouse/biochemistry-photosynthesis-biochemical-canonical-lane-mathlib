import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure PhotosynthesisAnalyticFoundation where
  primitivePhotosystem : PrimitivePhotosystem
  primitivePhotosynthesisEvidence : PrimitivePhotosynthesisEvidence primitivePhotosystem
  thylakoidMembrane : PrimitiveThylakoidMembrane
  electronTransportChain : PrimitiveElectronTransportChain
  lightHarvestingComplex : PrimitiveLightHarvestingComplex
  reactionCenter : PrimitiveReactionCenter
  chloroplast : PrimitiveChloroplast
  photophosphorylation : Prop
  carbonFixation : Prop
  photophosphorylationEvidence : photophosphorylation
  carbonFixationEvidence : carbonFixation

def PhotosynthesisAnalyticFoundationClosed (A : PhotosynthesisAnalyticFoundation) : Prop :=
  PrimitivePhotosynthesisClosed A.primitivePhotosystem ∧
  A.photophosphorylation ∧
  A.carbonFixation

theorem photosynthesis_analytic_foundation_closed_from_evidence (A : PhotosynthesisAnalyticFoundation) :
    PhotosynthesisAnalyticFoundationClosed A := by
  exact And.intro (primitive_photosynthesis_closed_from_evidence A.primitivePhotosystem A.primitivePhotosynthesisEvidence)
    (And.intro A.photophosphorylationEvidence A.carbonFixationEvidence)

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse