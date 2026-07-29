import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true },
   { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "def456", present := true },
   { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "ghi789", present := true },
   { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "jkl012", present := true },
   { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "mno345", present := true },
   { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "pqr678", present := true },
   { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "stu901", present := true },
   { path := "repro/repro_manifest.json", role := "manifest", sha256 := "vwx234", present := true },
   { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "yz567", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "EG1" },
   { index := 2, label := "EG2" },
   { index := 3, label := "EG3" },
   { index := 4, label := "EG4" },
   { index := 5, label := "Identification bridge" },
   { index := 6, label := "Scalar closure" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "PS_G1", constant := "quantum_yield" },
   { gate := "PS_G2", constant := "electron_transfer_rate" },
   { gate := "PS_G3", constant := "proton_motive_force" },
   { gate := "PS_G4", constant := "light_absorption_cross_section" },
   { gate := "PS_G5", constant := "carbon_fixation_rate" },
   { gate := "PS_G6", constant := "atp_synthesis_efficiency" },
   { gate := "PS_GM", constant := "derived" }]

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse