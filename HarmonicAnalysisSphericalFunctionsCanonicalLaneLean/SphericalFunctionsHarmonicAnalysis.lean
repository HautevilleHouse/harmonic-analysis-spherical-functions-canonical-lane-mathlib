import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace SphericalFunctionsHarmonicAnalysis

structure SphericalFunctionSpace where
  group : Type u
  subgroup : Type v
  topologyGroup : TopologicalSpace group
  topologySubgroup : TopologicalSpace subgroup
  haarMeasure : group → ℝ
  sphericalFunction : group → ℂ
  biinvariant : Prop
  positiveDefinite : Prop
  zonalSpherical : Prop

structure SphericalTransform where
  sourceSpace : SphericalFunctionSpace
  targetSpace : SphericalFunctionSpace
  transformKernel : sourceSpace.group → targetSpace.group → ℂ
  inversionFormula : Prop
  plancherelFormula : Prop

end SphericalFunctionsHarmonicAnalysis
end HautevilleHouse