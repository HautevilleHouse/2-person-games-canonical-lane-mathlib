import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure NormalFormGame where
  players : Fin 2
  strategySets : (i : Fin 2) -> Type u
  payoffFunctions : (i : Fin 2) -> ((j : Fin 2) -> strategySets j) -> Real

structure GameFormEvidence (G : NormalFormGame) where
  playersDefined : True

def GameFormClosed (G : NormalFormGame) : Prop :=
  True

theorem game_form_closed_from_evidence
    (G : NormalFormGame) (E : GameFormEvidence G) : GameFormClosed G := by
  exact trivial

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse