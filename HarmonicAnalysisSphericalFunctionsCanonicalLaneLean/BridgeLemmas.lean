import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.positiveDefinite ∧ A.object.zonalSpherical

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse