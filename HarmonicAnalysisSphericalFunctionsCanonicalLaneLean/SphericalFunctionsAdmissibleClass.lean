import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctionsCanonicalLaneLean

structure SphericalFunctionAdmittedObject where
  group : Type u
  subgroup : Type v
  sphericalFunction : Type w
  positiveDefinite : Prop
  zonalSpherical : Prop
  conclusion : positiveDefinite ∧ zonalSpherical

structure AdmissibleClass where
  object : SphericalFunctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.positiveDefinite ∧ A.object.zonalSpherical) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisSphericalFunctionsCanonicalLaneLean
end HautevilleHouse