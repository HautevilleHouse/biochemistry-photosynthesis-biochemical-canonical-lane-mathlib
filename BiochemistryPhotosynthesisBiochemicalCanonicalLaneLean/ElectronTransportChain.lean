import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.ThylakoidMembrane

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ElectronTransportChainPackage {M : ThylakoidMembranePackage} where
  photosystemIIExciton : Prop
  plastoquinoneReduction : Prop
  cytochromeB6f : Prop
  plastocyaninTransfer : Prop
  photosystemIReduction : Prop
  ferredoxinReduction : Prop
  nadphProduction : Prop

structure ElectronTransportChainEvidence {M : ThylakoidMembranePackage} (E : ElectronTransportChainPackage M) where
  photosystemIIExcitonClosed : E.photosystemIIExciton
  plastoquinoneReductionClosed : E.plastoquinoneReduction
  cytochromeB6fClosed : E.cytochromeB6f
  plastocyaninTransferClosed : E.plastocyaninTransfer
  photosystemIReductionClosed : E.photosystemIReduction
  ferredoxinReductionClosed : E.ferredoxinReduction
  nadphProductionClosed : E.nadphProduction

def ElectronTransportChainClosed {M : ThylakoidMembranePackage} (E : ElectronTransportChainPackage M) : Prop :=
  E.photosystemIIExciton ∧ E.plastoquinoneReduction ∧ E.cytochromeB6f ∧ E.plastocyaninTransfer ∧ E.photosystemIReduction ∧ E.ferredoxinReduction ∧ E.nadphProduction

theorem electron_transport_chain_closed_from_evidence {M : ThylakoidMembranePackage} (E : ElectronTransportChainPackage M) (Ev : ElectronTransportChainEvidence E) : ElectronTransportChainClosed E := by
  exact And.intro Ev.photosystemIIExcitonClosed
    (And.intro Ev.plastoquinoneReductionClosed
      (And.intro Ev.cytochromeB6fClosed
        (And.intro Ev.plastocyaninTransferClosed
          (And.intro Ev.photosystemIReductionClosed
            (And.intro Ev.ferredoxinReductionClosed Ev.nadphProductionClosed)))))

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
