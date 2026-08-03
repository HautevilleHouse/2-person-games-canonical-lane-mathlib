import 2PersonGamesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GameSpace where
  players : Type
  strategySets : players → Type
  payoffFunctions : (player : players) → (s : (p : players) → strategySets p) → ℝ

structure GameAdmittedObject where
  gameSpace : GameSpace
  finitePlayers : (players : GameSpace.players) → Fintype (GameSpace.strategySets players)
  compactStrategySets : (players : GameSpace.players) → CompactSpace (GameSpace.strategySets players)
  continuousPayoffs : (player : GameSpace.players) → Continuous (GameSpace.payoffFunctions player)
  conclusion : MixedStrategyNashEquilibriumExists gameSpace

structure GameEndgameState where
  object : GameAdmittedObject

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.conclusion

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse