import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

/-! # Spherical Harmonics Basic Package -/

structure SphericalHarmonicsPackage where
  dimension : ℕ
  harmonicDegree : ℕ
  sphericalHarmonicSpace : Type u
  orthonormalBasis : Type v
  laplacianEigenfunction : Prop
  additionFormula : Prop
  functionalCompleteness : Prop

structure SphericalHarmonicsEvidence (S : SphericalHarmonicsPackage) where
  laplacianEigenfunctionClosed : S.laplacianEigenfunction
  additionFormulaClosed : S.additionFormula
  functionalCompletenessClosed : S.functionalCompleteness

def SphericalHarmonicsClosed (S : SphericalHarmonicsPackage) : Prop :=
  S.laplacianEigenfunction ∧ S.additionFormula ∧ S.functionalCompleteness

theorem spherical_harmonics_closed_from_evidence (S : SphericalHarmonicsPackage)
    (E : SphericalHarmonicsEvidence S) : SphericalHarmonicsClosed S := by
  exact And.intro E.laplacianEigenfunctionClosed
    (And.intro E.additionFormulaClosed E.functionalCompletenessClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse