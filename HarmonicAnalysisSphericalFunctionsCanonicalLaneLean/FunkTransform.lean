import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

/-! # Funk Transform Package -/

structure FunkTransformPackage where
  dimension : ℕ
  sphere : Type u
  transformDomain : Type v
  injectivity : Prop
  rangeCharacterization : Prop
  inversionFormula : Prop

structure FunkTransformEvidence (F : FunkTransformPackage) where
  injectivityClosed : F.injectivity
  rangeCharacterizationClosed : F.rangeCharacterization
  inversionFormulaClosed : F.inversionFormula

def FunkTransformClosed (F : FunkTransformPackage) : Prop :=
  F.injectivity ∧ F.rangeCharacterization ∧ F.inversionFormula

theorem funk_transform_closed_from_evidence (F : FunkTransformPackage)
    (E : FunkTransformEvidence F) : FunkTransformClosed F := by
  exact And.intro E.injectivityClosed
    (And.intro E.rangeCharacterizationClosed E.inversionFormulaClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse