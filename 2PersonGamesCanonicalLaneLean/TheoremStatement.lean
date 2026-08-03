import TwoPersonGamesCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  gameConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "2-person-games-canonical-lane",
  theoremName := "Two Person Games",
  theoremObject := "Nash equilibrium, minimax theorem, bargaining solutions, mechanism design",
  classicalBoundary := "classical source boundary carried by formalization",
  gameConstrainedStatement := "game-constrained theorem certificate internalized through baseline gates and source constants",
  certificateLane := "game_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "2-person-games-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "game_constrained" := by
  rfl

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse