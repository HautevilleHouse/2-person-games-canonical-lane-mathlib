import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure TwoPlayerGame where
  Player1 : Type
  Player2 : Type
  payoff1 : Player1 → Player2 → ℝ
  payoff2 : Player1 → Player2 → ℝ
  equilibriumSet : Set (Player1 × Player2)
  conclusion : equilibriumSet.Nonempty

def GameWitnessClosed (G : TwoPlayerGame) : Prop :=
  G.conclusion

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse