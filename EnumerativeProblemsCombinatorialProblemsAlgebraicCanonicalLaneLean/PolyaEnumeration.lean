import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure PolyaEnumerationPackage where
  groupAction : Type u
  weightFunction : Type v
  cycleIndexPolynomial : Prop
  enumerationFormula : Prop
  burnsideLemmaEnumerates : Prop

structure PolyaEnumerationEvidence (P : PolyaEnumerationPackage) where
  groupActionDefined : P.groupAction
  weightFunctionDefined : P.weightFunction
  cycleIndexPolynomialClosed : P.cycleIndexPolynomial
  enumerationFormulaClosed : P.enumerationFormula
  burnsideLemmaEnumeratesClosed : P.burnsideLemmaEnumerates

def PolyaEnumerationClosed (P : PolyaEnumerationPackage) : Prop :=
  P.groupAction ∧ P.weightFunction ∧ P.cycleIndexPolynomial ∧ P.enumerationFormula ∧ P.burnsideLemmaEnumerates

theorem polya_enumeration_closed_from_evidence (P : PolyaEnumerationPackage) (E : PolyaEnumerationEvidence P) : PolyaEnumerationClosed P := by
  exact And.intro E.groupActionDefined
    (And.intro E.weightFunctionDefined
      (And.intro E.cycleIndexPolynomialClosed
        (And.intro E.enumerationFormulaClosed E.burnsideLemmaEnumeratesClosed)))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
