import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalFourierTransformPackage where
  group : Type u
  sphericalFunctions : Type v
  fourierTransform : Prop
  inversionFormula : Prop
  plancherelTheorem : Prop

structure SphericalFourierTransformEvidence (F : SphericalFourierTransformPackage) where
  fourierTransformClosed : F.fourierTransform
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def SphericalFourierTransformClosed (F : SphericalFourierTransformPackage) : Prop :=
  F.fourierTransform ∧ F.inversionFormula ∧ F.plancherelTheorem

theorem spherical_fourier_transform_closed_from_evidence
    (F : SphericalFourierTransformPackage)
    (E : SphericalFourierTransformEvidence F) :
    SphericalFourierTransformClosed F := by
  exact And.intro E.fourierTransformClosed
    (And.intro E.inversionFormulaClosed E.plancherelTheoremClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse