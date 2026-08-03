import canonicalLaneMathlib.AdmissibleClass
import TwoPersonGamesCanonicalLaneLean.GameFoundation

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure BargainingProblem where
  feasibleSet : Set (ℝ × ℝ)
  disagreementPoint : ℝ × ℝ
  convex : Convex ℝ feasibleSet
  compact : IsCompact feasibleSet
  disagreementInFeasible : disagreementPoint ∈ feasibleSet

structure NashBargainingSolutionPackage (B : BargainingProblem) where
  solutionExists : Prop
  symmetric : Prop
  paretoOptimal : Prop
  independenceOfIrrelevantAlternatives : Prop
  scaleInvariance : Prop

structure NashBargainingSolutionEvidence {B : BargainingProblem} (N : NashBargainingSolutionPackage B) where
  solutionExistsClosed : N.solutionExists
  symmetricClosed : N.symmetric
  paretoOptimalClosed : N.paretoOptimal
  independenceOfIrrelevantAlternativesClosed : N.independenceOfIrrelevantAlternatives
  scaleInvarianceClosed : N.scaleInvariance

def NashBargainingSolutionClosed {B : BargainingProblem} (N : NashBargainingSolutionPackage B) : Prop :=
  N.solutionExists ∧ N.symmetric ∧ N.paretoOptimal ∧ N.independenceOfIrrelevantAlternatives ∧ N.scaleInvariance

theorem nash_bargaining_solution_closed_from_evidence {B : BargainingProblem} (N : NashBargainingSolutionPackage B) (E : NashBargainingSolutionEvidence N) :
    NashBargainingSolutionClosed N := by
  exact And.intro E.solutionExistsClosed
    (And.intro E.symmetricClosed
      (And.intro E.paretoOptimalClosed
        (And.intro E.independenceOfIrrelevantAlternativesClosed E.scaleInvarianceClosed)))

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse