import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoPersonGamesCanonicalLaneLean

structure AdmissibleClass where
  object : GameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoPersonGamesCanonicalLaneLean
end HautevilleHouse