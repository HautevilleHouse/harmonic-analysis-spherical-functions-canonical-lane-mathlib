import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.SphericalFunctionsHarmonicAnalysis.SphericalFunctionsHarmonicAnalysis

namespace HautevilleHouse
namespace SphericalFunctionsHarmonicAnalysis

structure HarishChandraTransformPackage (F : SphericalFunctionSpace) where
  cFunction : F.group → ℂ
  asymptoticExpansion : Prop
  functionalEquation : Prop
  meromorphicContinuation : Prop

structure HarishChandraTransformEvidence {F : SphericalFunctionSpace} (H : HarishChandraTransformPackage F) where
  asymptoticExpansionClosed : H.asymptoticExpansion
  functionalEquationClosed : H.functionalEquation
  meromorphicContinuationClosed : H.meromorphicContinuation

def HarishChandraTransformClosed {F : SphericalFunctionSpace} (H : HarishChandraTransformPackage F) : Prop :=
  H.asymptoticExpansion ∧ H.functionalEquation ∧ H.meromorphicContinuation

theorem harish_chandra_transform_closed_from_evidence
    {F : SphericalFunctionSpace} (H : HarishChandraTransformPackage F)
    (E : HarishChandraTransformEvidence H) : HarishChandraTransformClosed H := by
  exact And.intro E.asymptoticExpansionClosed
    (And.intro E.functionalEquationClosed E.meromorphicContinuationClosed)

end SphericalFunctionsHarmonicAnalysis
end HautevilleHouse