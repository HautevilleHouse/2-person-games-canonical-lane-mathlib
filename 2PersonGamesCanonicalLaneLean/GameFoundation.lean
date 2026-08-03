import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure TwoPlayerGame where
  player1Actions : Type u
  player2Actions : Type v
  payoff1 : player1Actions → player2Actions → ℝ
  payoff2 : player1Actions → player2Actions → ℝ

structure ZeroSumGame (G : TwoPlayerGame) where
  zeroSumCondition : ∀ a b, G.payoff1 a b = -G.payoff2 a b

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse