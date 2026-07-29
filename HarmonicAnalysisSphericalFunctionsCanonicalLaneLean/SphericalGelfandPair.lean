import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.SphericalFunctionsHarmonicAnalysis.SphericalFunctionsHarmonicAnalysis

namespace HautevilleHouse
namespace SphericalFunctionsHarmonicAnalysis

structure GelfandPairData where
  group : Type u
  subgroup : Type v
  convolutionAlgebra : Type w
  commutativityCondition : Prop

structure GelfandPairEvidence (G : GelfandPairData) where
  commutativityConditionClosed : G.commutativityCondition

def GelfandPairClosed (G : GelfandPairData) : Prop :=
  G.commutativityCondition

theorem gelfand_pair_closed_from_evidence (G : GelfandPairData) (E : GelfandPairEvidence G) :
    GelfandPairClosed G := by
  exact E.commutativityConditionClosed

end SphericalFunctionsHarmonicAnalysis
end HautevilleHouse