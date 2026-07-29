import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.SpeciesPackage

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure AlgebraicEnumerativePackage {G : GeneratingFunctionPackage} {S : SpeciesPackage G} where
  algebraicStructure : Type u
  enumerationFunction : Nat → Nat
  recurrenceRelation : Prop
  closedFormSolution : Prop
  asymptoticEstimate : Prop

structure AlgebraicEnumerativeEvidence {G : GeneratingFunctionPackage} {S : SpeciesPackage G}
    (A : AlgebraicEnumerativePackage G S) where
  recurrenceRelationClosed : A.recurrenceRelation
  closedFormSolutionClosed : A.closedFormSolution
  asymptoticEstimateClosed : A.asymptoticEstimate

def AlgebraicEnumerativeClosed {G : GeneratingFunctionPackage} {S : SpeciesPackage G}
    (A : AlgebraicEnumerativePackage G S) : Prop :=
  A.recurrenceRelation ∧ A.closedFormSolution ∧ A.asymptoticEstimate

theorem algebraic_enumerative_closed_from_evidence {G : GeneratingFunctionPackage} {S : SpeciesPackage G}
    (A : AlgebraicEnumerativePackage G S) (E : AlgebraicEnumerativeEvidence A) :
    AlgebraicEnumerativeClosed A := by
  exact And.intro E.recurrenceRelationClosed (And.intro E.closedFormSolutionClosed E.asymptoticEstimateClosed)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse