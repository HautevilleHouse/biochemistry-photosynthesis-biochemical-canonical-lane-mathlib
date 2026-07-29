import BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/absorbance.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/electron_flux.py", kind := "from_import", module := "scipy.integrate", name := "odeint", alias := "", level := 0 }
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/absorbance.py", name := "DEFAULT_SPECTRUM", path := "data/absorption_spectrum.csv", role := "input", line := 12 }
]

def sourceImportDependencyCount : Nat := 2
def sourceRuntimeModuleCount : Nat := 2
def sourcePathDependencyCount : Nat := 1

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 2 := by rfl

end BiochemistryPhotosynthesisBiochemicalCanonicalLaneLean
end HautevilleHouse
