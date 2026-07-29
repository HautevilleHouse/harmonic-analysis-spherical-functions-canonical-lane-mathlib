import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalHarmonicExpansion (N : ℕ) where
  basisDimension : ℕ
  sphericalHarmonics : ℕ → Type
  orthonormalBasis : Prop
  expansionConverges : Prop
  additionTheorem : Prop
  additionTheoremProof : additionTheorem

structure SphericalHarmonicExpansionEvidence (N : ℕ) (S : SphericalHarmonicExpansion N) where
  orthonormalBasisClosed : S.orthonormalBasis
  expansionConvergesClosed : S.expansionConverges

def SphericalHarmonicExpansionClosed (N : ℕ) (S : SphericalHarmonicExpansion N) : Prop :=
  S.orthonormalBasis ∧ S.expansionConverges ∧ S.additionTheorem

theorem spherical_harmonic_expansion_closed_from_evidence
    (N : ℕ) (S : SphericalHarmonicExpansion N) (E : SphericalHarmonicExpansionEvidence N S) :
    SphericalHarmonicExpansionClosed N S := by
  exact And.intro E.orthonormalBasisClosed
    (And.intro E.expansionConvergesClosed S.additionTheoremProof)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
