import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalFunction where
  domain : Type u
  codomain : Type v
  homogeneity : Prop
  eigenfunctionProperty : Prop
  recurrenceRelation : Prop
  orthogonality : Prop
  homogeneityClosed : homogeneity
  eigenfunctionPropertyClosed : eigenfunctionProperty
  recurrenceRelationClosed : recurrenceRelation
  orthogonalityClosed : orthogonality

structure SphericalFunctionEvidence (F : SphericalFunction) where
  homogeneityClosed : F.homogeneity
  eigenfunctionPropertyClosed : F.eigenfunctionProperty
  recurrenceRelationClosed : F.recurrenceRelation
  orthogonalityClosed : F.orthogonality

def SphericalFunctionClosed (F : SphericalFunction) : Prop :=
  F.homogeneity ∧ F.eigenfunctionProperty ∧ F.recurrenceRelation ∧ F.orthogonality

theorem spherical_function_closed_from_evidence (F : SphericalFunction) (E : SphericalFunctionEvidence F) : SphericalFunctionClosed F := by
  exact And.intro E.homogeneityClosed (And.intro E.eigenfunctionPropertyClosed (And.intro E.recurrenceRelationClosed E.orthogonalityClosed))

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse