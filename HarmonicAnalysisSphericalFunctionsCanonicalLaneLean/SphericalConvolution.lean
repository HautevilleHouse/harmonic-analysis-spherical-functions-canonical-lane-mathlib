import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

/-! # Spherical Convolution Package -/

structure SphericalConvolutionPackage where
  group : Type u
  sphere : Type v
  convolutionProduct : Type w
  associativity : Prop
  commutativity : Prop
  identityElement : Prop
  positivityPreserving : Prop

structure SphericalConvolutionEvidence (C : SphericalConvolutionPackage) where
  associativityClosed : C.associativity
  commutativityClosed : C.commutativity
  identityElementClosed : C.identityElement
  positivityPreservingClosed : C.positivityPreserving

def SphericalConvolutionClosed (C : SphericalConvolutionPackage) : Prop :=
  C.associativity ∧ C.commutativity ∧ C.identityElement ∧ C.positivityPreserving

theorem spherical_convolution_closed_from_evidence (C : SphericalConvolutionPackage)
    (E : SphericalConvolutionEvidence C) : SphericalConvolutionClosed C := by
  exact And.intro E.associativityClosed
    (And.intro E.commutativityClosed
      (And.intro E.identityElementClosed E.positivityPreservingClosed))

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse