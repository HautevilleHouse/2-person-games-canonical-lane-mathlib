import HautevilleHouse.2PersonGamesCanonicalLaneLean.NashEquilibrium

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

definition gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse