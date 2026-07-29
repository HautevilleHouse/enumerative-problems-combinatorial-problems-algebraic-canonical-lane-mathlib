import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure CombinatorialSpeciesPackage where
  speciesType : Type u
  labeledStructures : Prop
  unlabeledStructures : Prop
  generatingFunctionDerived : Prop
  cycleIndexSeries : Prop

structure CombinatorialSpeciesEvidence (S : CombinatorialSpeciesPackage) where
  speciesTypeDefined : S.speciesType
  labeledStructuresClosed : S.labeledStructures
  unlabeledStructuresClosed : S.unlabeledStructures
  generatingFunctionDerivedClosed : S.generatingFunctionDerived
  cycleIndexSeriesClosed : S.cycleIndexSeries

def CombinatorialSpeciesClosed (S : CombinatorialSpeciesPackage) : Prop :=
  S.speciesType ∧ S.labeledStructures ∧ S.unlabeledStructures ∧ S.generatingFunctionDerived ∧ S.cycleIndexSeries

theorem combinatorial_species_closed_from_evidence (S : CombinatorialSpeciesPackage) (E : CombinatorialSpeciesEvidence S) : CombinatorialSpeciesClosed S := by
  exact And.intro E.speciesTypeDefined
    (And.intro E.labeledStructuresClosed
      (And.intro E.unlabeledStructuresClosed
        (And.intro E.generatingFunctionDerivedClosed E.cycleIndexSeriesClosed)))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse
