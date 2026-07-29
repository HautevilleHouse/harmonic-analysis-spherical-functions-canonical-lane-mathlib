import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SphericalAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  compactSymmetricSpace : Prop
  sphericalFunctionSpace : Type v
  admissionWitness : sphericalFunctionSpace

structure AdmissibleClass where
  object : SphericalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  sphericalFunctionSpaceClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse