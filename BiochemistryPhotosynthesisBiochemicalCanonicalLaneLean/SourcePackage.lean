import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile := [
  { path := "scripts/absorbance.py", sha256 := "aaa", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
  { path := "scripts/electron_flux.py", sha256 := "bbb", functionCount := 4, classCount := 1, assignmentCount := 2, parseOk := true }
]

def sourceFunctions : List SourceFunctionDecl := [
  { file := "scripts/absorbance.py", name := "calculate_absorbance", args := ["wavelength", "concentration"], returns := "float", doc := "", line := 10, isAsync := false }
]

def sourceAssignments : List SourceAssignmentDecl := [
  { file := "scripts/absorbance.py", name := "molar_extinction", value := "ε = 88000 M^-1 cm^-1", line := 5 }
]

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
