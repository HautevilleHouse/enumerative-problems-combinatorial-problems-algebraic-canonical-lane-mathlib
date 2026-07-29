import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.SpeciesPackage

/-!
# Generating Function Package
-/

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure GeneratingFunctionPackage {S : SpeciesPackage} where
  ordinaryGeneratingFunction : Type u
  exponentialGeneratingFunction : Type v
  algebraicEquation : Prop
  differentialEquation : Prop
  extractionFormula : Prop

structure GeneratingFunctionEvidence {S : SpeciesPackage}
    (G : GeneratingFunctionPackage S) where
  algebraicEquationClosed : G.algebraicEquation
  differentialEquationClosed : G.differentialEquation
  extractionFormulaClosed : G.extractionFormula

def GeneratingFunctionClosed {S : SpeciesPackage}
    (G : GeneratingFunctionPackage S) : Prop :=
  G.algebraicEquation ∧ G.differentialEquation ∧ G.extractionFormula

theorem generating_function_closed_from_evidence
    {S : SpeciesPackage} (G : GeneratingFunctionPackage S)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.algebraicEquationClosed
    (And.intro E.differentialEquationClosed E.extractionFormulaClosed)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
