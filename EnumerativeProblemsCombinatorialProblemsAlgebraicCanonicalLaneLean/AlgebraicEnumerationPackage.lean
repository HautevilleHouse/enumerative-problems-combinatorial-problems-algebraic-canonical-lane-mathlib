import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.GeneratingFunctionPackage

/-!
# Algebraic Enumeration Package
-/

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure AlgebraicEnumerationPackage {S : SpeciesPackage}
    {G : GeneratingFunctionPackage S} where
  holonomicEquation : Prop
  pRecursiveSequence : Prop
  closedFormFormula : Prop
  asymptoticEstimate : Prop

structure AlgebraicEnumerationEvidence {S : SpeciesPackage}
    {G : GeneratingFunctionPackage S}
    (A : AlgebraicEnumerationPackage G) where
  holonomicEquationClosed : A.holonomicEquation
  pRecursiveSequenceClosed : A.pRecursiveSequence
  closedFormFormulaClosed : A.closedFormFormula
  asymptoticEstimateClosed : A.asymptoticEstimate

def AlgebraicEnumerationClosed {S : SpeciesPackage}
    {G : GeneratingFunctionPackage S}
    (A : AlgebraicEnumerationPackage G) : Prop :=
  A.holonomicEquation ∧ A.pRecursiveSequence ∧
  A.closedFormFormula ∧ A.asymptoticEstimate

theorem algebraic_enumeration_closed_from_evidence
    {S : SpeciesPackage} {G : GeneratingFunctionPackage S}
    (A : AlgebraicEnumerationPackage G)
    (E : AlgebraicEnumerationEvidence A) : AlgebraicEnumerationClosed A := by
  exact And.intro E.holonomicEquationClosed
    (And.intro E.pRecursiveSequenceClosed
      (And.intro E.closedFormFormulaClosed E.asymptoticEstimateClosed))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
