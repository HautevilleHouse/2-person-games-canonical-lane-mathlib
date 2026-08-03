import HautevilleHouse.2PersonGamesCanonicalLaneLean.GameStructure

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse