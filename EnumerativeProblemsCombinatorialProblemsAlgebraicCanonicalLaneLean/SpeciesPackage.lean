import EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure SpeciesPackage {C : CombinatorialClassPackage}
    {G : GeneratingFunctionPackage C} where
  functorialStructure : Prop
  canonicalDecomposition : Prop
  cycleIndexSeries : Prop
  enumerationTheorem : Prop

structure SpeciesEvidence {C : CombinatorialClassPackage}
    {G : GeneratingFunctionPackage C} (S : SpeciesPackage G) where
  functorialStructureClosed : S.functorialStructure
  canonicalDecompositionClosed : S.canonicalDecomposition
  cycleIndexSeriesClosed : S.cycleIndexSeries
  enumerationTheoremClosed : S.enumerationTheorem

def SpeciesClosed {C : CombinatorialClassPackage}
    {G : GeneratingFunctionPackage C} (S : SpeciesPackage G) : Prop :=
  S.functorialStructure ∧ S.canonicalDecomposition ∧
  S.cycleIndexSeries ∧ S.enumerationTheorem

theorem species_closed_from_evidence
    {C : CombinatorialClassPackage} {G : GeneratingFunctionPackage C}
    (S : SpeciesPackage G) (E : SpeciesEvidence S) : SpeciesClosed S := by
  exact And.intro E.functorialStructureClosed
    (And.intro E.canonicalDecompositionClosed
      (And.intro E.cycleIndexSeriesClosed E.enumerationTheoremClosed))

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse