import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

/-! # Spherical Harmonic Expansion Package -/

structure SphericalHarmonicExpansionPackage where
  dimension : ℕ
  squareIntegrableFunctions : Type u
  orthonormalBasis : Type v
  expansionConvergence : Prop
  parsevalIdentity : Prop
  pointwiseConvergence : Prop

structure SphericalHarmonicExpansionEvidence (E : SphericalHarmonicExpansionPackage) where
  expansionConvergenceClosed : E.expansionConvergence
  parsevalIdentityClosed : E.parsevalIdentity
  pointwiseConvergenceClosed : E.pointwiseConvergence

def SphericalHarmonicExpansionClosed (E : SphericalHarmonicExpansionPackage) : Prop :=
  E.expansionConvergence ∧ E.parsevalIdentity ∧ E.pointwiseConvergence

theorem spherical_harmonic_expansion_closed_from_evidence (E : SphericalHarmonicExpansionPackage)
    (Ev : SphericalHarmonicExpansionEvidence E) : SphericalHarmonicExpansionClosed E := by
  exact And.intro Ev.expansionConvergenceClosed
    (And.intro Ev.parsevalIdentityClosed Ev.pointwiseConvergenceClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse