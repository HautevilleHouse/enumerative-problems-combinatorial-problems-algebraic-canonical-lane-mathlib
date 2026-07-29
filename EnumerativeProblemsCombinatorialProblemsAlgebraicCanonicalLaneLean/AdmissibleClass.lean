import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EnumerationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
