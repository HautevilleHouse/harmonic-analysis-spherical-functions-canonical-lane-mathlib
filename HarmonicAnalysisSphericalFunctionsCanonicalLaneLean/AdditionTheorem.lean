import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

/-! # Addition Theorem Package -/

structure AdditionTheoremPackage where
  dimension : ℕ
  legendrePolynomials : Type u
  gegenbauerPolynomials : Type v
  additionFormula : Prop
  generatingFunction : Prop
  recurrenceRelation : Prop

structure AdditionTheoremEvidence (A : AdditionTheoremPackage) where
  additionFormulaClosed : A.additionFormula
  generatingFunctionClosed : A.generatingFunction
  recurrenceRelationClosed : A.recurrenceRelation

def AdditionTheoremClosed (A : AdditionTheoremPackage) : Prop :=
  A.additionFormula ∧ A.generatingFunction ∧ A.recurrenceRelation

theorem addition_theorem_closed_from_evidence (A : AdditionTheoremPackage)
    (E : AdditionTheoremEvidence A) : AdditionTheoremClosed A := by
  exact And.intro E.additionFormulaClosed
    (And.intro E.generatingFunctionClosed E.recurrenceRelationClosed)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse