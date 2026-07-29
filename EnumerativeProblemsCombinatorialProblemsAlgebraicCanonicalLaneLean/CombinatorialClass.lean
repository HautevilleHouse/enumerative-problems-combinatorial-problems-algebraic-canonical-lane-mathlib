import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean

structure CombinatorialClassPackage where
  carrier : Type u
  size : Type v
  generatingFunction : Type w
  combinatorialSpecification : Prop
  wellFounded : Prop
  decompositionClosed : Prop

structure CombinatorialClassEvidence (C : CombinatorialClassPackage) where
  combinatorialSpecificationClosed : C.combinatorialSpecification
  wellFoundedClosed : C.wellFounded
  decompositionClosed : C.decompositionClosed

def CombinatorialClassClosed (C : CombinatorialClassPackage) : Prop :=
  C.combinatorialSpecification ∧ C.wellFounded ∧ C.decompositionClosed

theorem combinatorial_class_closed_from_evidence
    (C : CombinatorialClassPackage) (E : CombinatorialClassEvidence C) :
    CombinatorialClassClosed C := by
  exact And.intro E.combinatorialSpecificationClosed
    (And.intro E.wellFoundedClosed E.decompositionClosed)

end EnumerativeProblemsCombinatorialProblemsAlgebraicCanonicalLaneLean
end HautevilleHouse