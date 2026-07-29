import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.CombinatorialClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure GeneratingFunctionPackage {C : CombinatorialClassPackage} where
  coefficientSequence : Type u
  closedForm : Type v
  ordinaryGeneratingFunction : Prop
  exponentialGeneratingFunction : Prop
  analyticProperties : Prop

structure GeneratingFunctionEvidence {C : CombinatorialClassPackage}
    (G : GeneratingFunctionPackage C) where
  ordinaryGeneratingFunctionClosed : G.ordinaryGeneratingFunction
  exponentialGeneratingFunctionClosed : G.exponentialGeneratingFunction
  analyticPropertiesClosed : G.analyticProperties

def GeneratingFunctionClosed {C : CombinatorialClassPackage}
    (G : GeneratingFunctionPackage C) : Prop :=
  G.ordinaryGeneratingFunction ∧ G.exponentialGeneratingFunction ∧ G.analyticProperties

theorem generating_function_closed_from_evidence
    {C : CombinatorialClassPackage} (G : GeneratingFunctionPackage C)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.ordinaryGeneratingFunctionClosed
    (And.intro E.exponentialGeneratingFunctionClosed E.analyticPropertiesClosed)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse