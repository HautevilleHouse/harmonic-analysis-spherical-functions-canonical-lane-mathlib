import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure ZonalSphericalFunctionPackage where
  group : Type u
  subgroup : Type v
  zonalFunction : Type w
  biInvariant : Prop
  positiveDefinite : Prop
  functionalEquation : Prop

structure ZonalSphericalFunctionEvidence (Z : ZonalSphericalFunctionPackage) where
  biInvariantClosed : Z.biInvariant
  positiveDefiniteClosed : Z.positiveDefinite
  functionalEquationClosed : Z.functionalEquation

def ZonalSphericalFunctionClosed (Z : ZonalSphericalFunctionPackage) : Prop :=
  Z.biInvariant ∧ Z.positiveDefinite ∧ Z.functionalEquation

theorem zonal_spherical_function_closed_from_evidence
    (Z : ZonalSphericalFunctionPackage)
    (E : ZonalSphericalFunctionEvidence Z) :
    ZonalSphericalFunctionClosed Z := by
  exact And.intro E.biInvariantClosed
    (And.intro E.positiveDefiniteClosed E.functionalEquationClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse