import canonicalLaneMathlib.AdmissibleClass
import TwoPersonGamesCanonicalLaneLean.GameFoundation

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure MechanismDesignPackage (G : TwoPlayerGame) where
  revelationPrinciple : Prop
  incentiveCompatibility : Prop
  efficiency : Prop

structure MechanismDesignEvidence {G : TwoPlayerGame} (M : MechanismDesignPackage G) where
  revelationPrincipleClosed : M.revelationPrinciple
  incentiveCompatibilityClosed : M.incentiveCompatibility
  efficiencyClosed : M.efficiency

def MechanismDesignClosed {G : TwoPlayerGame} (M : MechanismDesignPackage G) : Prop :=
  M.revelationPrinciple ∧ M.incentiveCompatibility ∧ M.efficiency

theorem mechanism_design_closed_from_evidence {G : TwoPlayerGame} (M : MechanismDesignPackage G) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.revelationPrincipleClosed (And.intro E.incentiveCompatibilityClosed E.efficiencyClosed)

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse