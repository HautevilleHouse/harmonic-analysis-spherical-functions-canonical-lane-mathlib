import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalHarmonicBasis (n : ℕ) where
  dimension : ℕ
  orthonormalBasis : Type u
  recurrenceRelation : Prop
  additionFormula : Prop
  dimensionClosed : dimension = n
  orthonormalBasisClosed : orthonormalBasis
  recurrenceRelationClosed : recurrenceRelation
  additionFormulaClosed : additionFormula

structure SphericalHarmonicBasisEvidence (n : ℕ) (B : SphericalHarmonicBasis n) where
  dimensionClosed : B.dimension = n
  orthonormalBasisClosed : B.orthonormalBasis
  recurrenceRelationClosed : B.recurrenceRelation
  additionFormulaClosed : B.additionFormula

def SphericalHarmonicBasisClosed (n : ℕ) (B : SphericalHarmonicBasis n) : Prop :=
  B.dimension = n ∧ B.orthonormalBasis ∧ B.recurrenceRelation ∧ B.additionFormula

theorem spherical_harmonic_basis_closed_from_evidence (n : ℕ) (B : SphericalHarmonicBasis n) (E : SphericalHarmonicBasisEvidence n B) : SphericalHarmonicBasisClosed n B := by
  exact And.intro E.dimensionClosed (And.intro E.orthonormalBasisClosed (And.intro E.recurrenceRelationClosed E.additionFormulaClosed))

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse