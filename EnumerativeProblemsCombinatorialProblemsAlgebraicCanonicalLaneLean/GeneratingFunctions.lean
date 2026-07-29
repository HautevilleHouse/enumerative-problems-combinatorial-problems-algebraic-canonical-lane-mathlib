import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure GeneratingFunctionPackage where
  formalPowerSeries : Type u
  coefficientRing : Type v
  combinatorialInterpretation : Prop
  recurrenceRelation : Prop
  closedForm : Prop

structure GeneratingFunctionEvidence (G : GeneratingFunctionPackage) where
  formalPowerSeriesDefined : G.formalPowerSeries
  coefficientRingDefined : G.coefficientRing
  combinatorialInterpretationClosed : G.combinatorialInterpretation
  recurrenceRelationClosed : G.recurrenceRelation
  closedFormClosed : G.closedForm

def GeneratingFunctionClosed (G : GeneratingFunctionPackage) : Prop :=
  G.formalPowerSeries ∧ G.coefficientRing ∧ G.combinatorialInterpretation ∧ G.recurrenceRelation ∧ G.closedForm

theorem generating_function_closed_from_evidence (G : GeneratingFunctionPackage) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.formalPowerSeriesDefined
    (And.intro E.coefficientRingDefined
      (And.intro E.combinatorialInterpretationClosed
        (And.intro E.recurrenceRelationClosed E.closedFormClosed)))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
