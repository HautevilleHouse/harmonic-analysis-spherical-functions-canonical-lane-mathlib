import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalFunkTransform {X : Type} [TopologicalSpace X] where
  kernel : X → X → ℂ
  integralOperator : Type
  inversionFormula : Prop
  positivity : Prop
  inversionFormulaProof : inversionFormula
  positivityProof : positivity

structure SphericalFunkTransformEvidence {X : Type} [TopologicalSpace X] (T : SphericalFunkTransform X) where
  inversionFormulaClosed : T.inversionFormula
  positivityClosed : T.positivity

def SphericalFunkTransformClosed {X : Type} [TopologicalSpace X] (T : SphericalFunkTransform X) : Prop :=
  T.inversionFormula ∧ T.positivity

theorem spherical_funk_transform_closed_from_evidence
    {X : Type} [TopologicalSpace X] (T : SphericalFunkTransform X) (E : SphericalFunkTransformEvidence X T) :
    SphericalFunkTransformClosed T := by
  exact And.intro E.inversionFormulaClosed E.positivityClosed

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
