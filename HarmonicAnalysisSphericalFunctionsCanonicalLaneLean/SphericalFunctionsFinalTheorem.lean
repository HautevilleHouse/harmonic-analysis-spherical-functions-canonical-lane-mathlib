import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.SphericalFunctionsHarmonicAnalysis.SphericalHarmonicAnalysisBridgeLemmas

namespace HautevilleHouse
namespace SphericalFunctionsHarmonicAnalysis

def ConstrainedSphericalFunctionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_spherical_functions_endgame (A : AdmissibleClass) :
    ConstrainedSphericalFunctionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end SphericalFunctionsHarmonicAnalysis
end HautevilleHouse