import HautevilleHouse.2PersonGamesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure TwoPlayerGame where
  Player1 : Type u
  Player2 : Type v
  Action1 : Type w
  Action2 : Type x
  Payoff1 : Action1 → Action2 → ℝ
  Payoff2 : Action1 → Action2 → ℝ

definition MixedStrategy (A : Type) (Δ : Type) [AddCommMonoid Δ] [SMul ℝ Δ] : Prop := True

structure NashEquilibrium (G : TwoPlayerGame) where
  strategy1 : G.Action1 → ℝ
  strategy2 : G.Action2 → ℝ
  isMixed : MixedStrategy G.Action1 (G.Action1 → ℝ) ∧ MixedStrategy G.Action2 (G.Action2 → ℝ)
  bestResponse1 : ∀ (a1 : G.Action1), ∑ a2, strategy2 a2 * G.Payoff1 a1 a2 ≤ ∑ a2, strategy2 a2 * G.Payoff1 (argmax₁? ...) a2
  bestResponse2 : ∀ (a2 : G.Action2), ∑ a1, strategy1 a1 * G.Payoff2 a1 a2 ≤ ∑ a1, strategy1 a1 * G.Payoff2 a1 (argmax₂? ...)

-- We'll simplify: just record existence of Nash equilibrium

definition NashEquilibriumExists (G : TwoPlayerGame) : Prop :=
  ∃ (s1 : G.Action1 → ℝ) (s2 : G.Action2 → ℝ),
    (∀ a1, ∀ a2, s1 a1 ≥ 0 ∧ s2 a2 ≥ 0) ∧
    (∑ a1, s1 a1 = 1) ∧ (∑ a2, s2 a2 = 1) ∧
    (∀ a1', ∑ a2, s2 a2 * G.Payoff1 a1' a2 ≤ ∑ a2, s2 a2 * G.Payoff1 a1 a2) ? -- incomplete

-- We'll define a proper structure

structure GameAdmissibleObject where
  game : TwoPlayerGame
  ne : NashEquilibriumExists game
  minimax : Prop
  bargaining : Prop

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse