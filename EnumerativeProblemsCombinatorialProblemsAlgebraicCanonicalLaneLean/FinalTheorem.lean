import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

def ConstrainedEnumerativeAlgebraicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_enumerative_algebraic_endgame (A : AdmissibleClass) :
    ConstrainedEnumerativeAlgebraicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
