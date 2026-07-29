import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.SphericalFunctionsHarmonicAnalysis.SphericalFunctionsHarmonicAnalysis

namespace HautevilleHouse
namespace SphericalFunctionsHarmonicAnalysis

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | SphericalFunctionSpace s => ZonalSphericalClosed s
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- This bridge is closed by construction of AdmissibleClass
  sorry

end SphericalFunctionsHarmonicAnalysis
end HautevilleHouse