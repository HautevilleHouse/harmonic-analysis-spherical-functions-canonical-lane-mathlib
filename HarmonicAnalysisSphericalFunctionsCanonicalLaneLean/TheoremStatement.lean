import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisSphericalFunctions.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSphericalFunctions

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "harmonic-analysis-spherical-functions-canonical-lane",
  theoremName := "Spherical Function Positive Definiteness Criterion",
  theoremObject := "SphericalAdmittedObject",
  classicalBoundary := "classical boundary carried through formalization certificate",
  manifoldConstrainedStatement := "spherical-function positive definiteness criterion internalized through bridge and gate",
  certificateLane := "spherical_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "harmonic-analysis-spherical-functions-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "spherical_constrained" := by
  rfl

end HarmonicAnalysisSphericalFunctions
end HautevilleHouse
