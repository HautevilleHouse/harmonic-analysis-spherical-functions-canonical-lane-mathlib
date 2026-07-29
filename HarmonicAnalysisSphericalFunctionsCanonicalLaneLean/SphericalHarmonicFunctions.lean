import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalHarmonicFunctionPackage where
  manifold : Type u
  lieGroup : Type v
  compactSubgroup : Type w
  sphericalFunction : Type x
  zonalSphericalFunction : Type y
  harmonicDecomposition : Prop
  dimensionBound : Prop
  additionFormula : Prop

structure SphericalHarmonicFunctionEvidence (P : SphericalHarmonicFunctionPackage) where
  harmonicDecompositionClosed : P.harmonicDecomposition
  dimensionBoundClosed : P.dimensionBound
  additionFormulaClosed : P.additionFormula

def SphericalHarmonicFunctionClosed (P : SphericalHarmonicFunctionPackage) : Prop :=
  P.harmonicDecomposition ∧ P.dimensionBound ∧ P.additionFormula

theorem spherical_harmonic_function_closed_from_evidence
    (P : SphericalHarmonicFunctionPackage) (E : SphericalHarmonicFunctionEvidence P) :
    SphericalHarmonicFunctionClosed P := by
  exact And.intro E.harmonicDecompositionClosed (And.intro E.dimensionBoundClosed E.additionFormulaClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse
