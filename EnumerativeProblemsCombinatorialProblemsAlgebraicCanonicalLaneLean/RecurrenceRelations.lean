import canonicalLaneMathlib.AdmissibleClass

/-!
# Recurrence Relations Package
-/

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure RecurrenceRelationPackage where
  recurrenceOrder : Nat
  initialConditions : Prop
  closedFormSolution : Prop
  generatingFunctionLinked : Prop

structure RecurrenceRelationEvidence (R : RecurrenceRelationPackage) where
  recurrenceOrderClosed : R.recurrenceOrder
  initialConditionsClosed : R.initialConditions
  closedFormSolutionClosed : R.closedFormSolution
  generatingFunctionLinkedClosed : R.generatingFunctionLinked

def RecurrenceRelationClosed (R : RecurrenceRelationPackage) : Prop :=
  R.recurrenceOrder ∧ R.initialConditions ∧ R.closedFormSolution ∧ R.generatingFunctionLinked

theorem recurrence_relation_closed_from_evidence (R : RecurrenceRelationPackage) (E : RecurrenceRelationEvidence R) :
    RecurrenceRelationClosed R := by
  exact And.intro E.recurrenceOrderClosed
    (And.intro E.initialConditionsClosed
      (And.intro E.closedFormSolutionClosed E.generatingFunctionLinkedClosed))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
