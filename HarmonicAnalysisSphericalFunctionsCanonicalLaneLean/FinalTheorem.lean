import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

def ConstrainedSphericalHarmonicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_spherical_harmonic_endgame (A : AdmissibleClass) :
    ConstrainedSphericalHarmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
