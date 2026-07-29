import canonicalLaneMathlib.AdmissibleClass
import HarmonicAnalysisSphericalFunctionsCanonicalLaneLean.HelgasonFourierTransform

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalHeckeAlgebraPackage {P : SphericalHarmonicFunctionPackage}
    {H : HarishChandraTransformPackage P} {F : HelgasonFourierTransformPackage H} where
  heckeAlgebra : Type u
  convolutionProduct : Type v
  sphericalFunctionBasis : Prop
  multiplicationTable : Prop
  satakeIsomorphism : Prop

structure SphericalHeckeAlgebraEvidence {P : SphericalHarmonicFunctionPackage}
    {H : HarishChandraTransformPackage P} {F : HelgasonFourierTransformPackage H}
    (A : SphericalHeckeAlgebraPackage) where
  sphericalFunctionBasisClosed : A.sphericalFunctionBasis
  multiplicationTableClosed : A.multiplicationTable
  satakeIsomorphismClosed : A.satakeIsomorphism

def SphericalHeckeAlgebraClosed {P : SphericalHarmonicFunctionPackage}
    {H : HarishChandraTransformPackage P} {F : HelgasonFourierTransformPackage H}
    (A : SphericalHeckeAlgebraPackage) : Prop :=
  A.sphericalFunctionBasis ∧ A.multiplicationTable ∧ A.satakeIsomorphism

theorem spherical_hecke_algebra_closed_from_evidence
    {P : SphericalHarmonicFunctionPackage} {H : HarishChandraTransformPackage P}
    {F : HelgasonFourierTransformPackage H} (A : SphericalHeckeAlgebraPackage)
    (E : SphericalHeckeAlgebraEvidence A) : SphericalHeckeAlgebraClosed A := by
  exact And.intro E.sphericalFunctionBasisClosed (And.intro E.multiplicationTableClosed E.satakeIsomorphismClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
