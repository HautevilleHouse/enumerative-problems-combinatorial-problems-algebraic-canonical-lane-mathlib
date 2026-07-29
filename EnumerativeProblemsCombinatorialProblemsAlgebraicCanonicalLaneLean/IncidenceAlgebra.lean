import canonicalLaneMathlib.AdmissibleClass
import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure IncidenceAlgebraPackage where
  poset : Type u
  incidenceFunction : Prop
  mobiusFunction : Prop
  convolution : Prop
  inversionFormula : Prop

structure IncidenceAlgebraEvidence (I : IncidenceAlgebraPackage) where
  posetClosed : I.poset
  incidenceFunctionClosed : I.incidenceFunction
  mobiusFunctionClosed : I.mobiusFunction
  convolutionClosed : I.convolution
  inversionFormulaClosed : I.inversionFormula

def IncidenceAlgebraClosed (I : IncidenceAlgebraPackage) : Prop :=
  I.poset ∧ I.incidenceFunction ∧ I.mobiusFunction ∧ I.convolution ∧ I.inversionFormula

theorem incidence_algebra_closed_from_evidence (I : IncidenceAlgebraPackage) (E : IncidenceAlgebraEvidence I) :
    IncidenceAlgebraClosed I := by
  exact And.intro E.posetClosed
    (And.intro E.incidenceFunctionClosed
      (And.intro E.mobiusFunctionClosed
        (And.intro E.convolutionClosed E.inversionFormulaClosed)))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse