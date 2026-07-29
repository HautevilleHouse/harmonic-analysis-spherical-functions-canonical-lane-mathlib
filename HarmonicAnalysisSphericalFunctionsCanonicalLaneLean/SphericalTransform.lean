import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalTransform where
  forwardTransform : Type u
  inverseTransform : Type v
  kernelFunction : Type w
  convergenceProperties : Prop
  inversionFormula : Prop
  forwardTransformClosed : forwardTransform
  inverseTransformClosed : inverseTransform
  kernelFunctionClosed : kernelFunction
  convergencePropertiesClosed : convergenceProperties
  inversionFormulaClosed : inversionFormula

structure SphericalTransformEvidence (T : SphericalTransform) where
  forwardTransformClosed : T.forwardTransform
  inverseTransformClosed : T.inverseTransform
  kernelFunctionClosed : T.kernelFunction
  convergencePropertiesClosed : T.convergenceProperties
  inversionFormulaClosed : T.inversionFormula

def SphericalTransformClosed (T : SphericalTransform) : Prop :=
  T.forwardTransform ∧ T.inverseTransform ∧ T.kernelFunction ∧ T.convergenceProperties ∧ T.inversionFormula

theorem spherical_transform_closed_from_evidence (T : SphericalTransform) (E : SphericalTransformEvidence T) : SphericalTransformClosed T := by
  exact And.intro E.forwardTransformClosed (And.intro E.inverseTransformClosed (And.intro E.kernelFunctionClosed (And.intro E.convergencePropertiesClosed E.inversionFormulaClosed)))

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse