import canonicalLaneMathlib.AdmissibleClass
import HarmonicAnalysisSphericalFunctionsCanonicalLaneLean.HarishChandraTransform

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure HelgasonFourierTransformPackage {P : SphericalHarmonicFunctionPackage}
    (H : HarishChandraTransformPackage P) where
  fourierTransform : P.sphericalFunction → Type u
  inversionFormula : Prop
  plancherelFormula : Prop
  paleyWienerTheorem : Prop

structure HelgasonFourierTransformEvidence {P : SphericalHarmonicFunctionPackage}
    {H : HarishChandraTransformPackage P} (F : HelgasonFourierTransformPackage H) where
  inversionFormulaClosed : F.inversionFormula
  plancherelFormulaClosed : F.plancherelFormula
  paleyWienerTheoremClosed : F.paleyWienerTheorem

def HelgasonFourierTransformClosed {P : SphericalHarmonicFunctionPackage}
    {H : HarishChandraTransformPackage P} (F : HelgasonFourierTransformPackage H) : Prop :=
  F.inversionFormula ∧ F.plancherelFormula ∧ F.paleyWienerTheorem

theorem helgason_fourier_transform_closed_from_evidence
    {P : SphericalHarmonicFunctionPackage} {H : HarishChandraTransformPackage P}
    (F : HelgasonFourierTransformPackage H) (E : HelgasonFourierTransformEvidence F) :
    HelgasonFourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed (And.intro E.plancherelFormulaClosed E.paleyWienerTheoremClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
