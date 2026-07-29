import DiophantineInequalitiesCanonicalLaneLean.LocalGlobalPackage

/-!
# Height Gap Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure HeightGapPackage where
  heightFunction : Prop
  boundedHeight : Prop
  infiniteSetContradiction : Prop
  gapInequality : Prop

structure HeightGapEvidence (H : HeightGapPackage) where
  heightFunctionClosed : H.heightFunction
  boundedHeightClosed : H.boundedHeight
  infiniteSetContradictionClosed : H.infiniteSetContradiction
  gapInequalityClosed : H.gapInequality

def HeightGapClosed (H : HeightGapPackage) : Prop :=
  H.heightFunction ∧ H.boundedHeight ∧ H.infiniteSetContradiction ∧ H.gapInequality

theorem height_gap_closed_from_evidence (H : HeightGapPackage) (E : HeightGapEvidence H) :
    HeightGapClosed H := by
  exact And.intro E.heightFunctionClosed (And.intro E.boundedHeightClosed (And.intro E.infiniteSetContradictionClosed E.gapInequalityClosed))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse