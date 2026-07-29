import DiophantineInequalitiesCanonicalLaneLean.InfiniteDescentPackage

/-!
# Local-Global Principle Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure LocalGlobalPackage where
  localSolutions : Prop
  globalSolutions : Prop
  localToGlobalImplication : Prop
  obstructionGroup : Prop

structure LocalGlobalEvidence (L : LocalGlobalPackage) where
  localSolutionsClosed : L.localSolutions
  globalSolutionsClosed : L.globalSolutions
  localToGlobalImplicationClosed : L.localToGlobalImplication
  obstructionGroupClosed : L.obstructionGroup

def LocalGlobalClosed (L : LocalGlobalPackage) : Prop :=
  L.localSolutions ∧ L.globalSolutions ∧ L.localToGlobalImplication ∧ L.obstructionGroup

theorem local_global_closed_from_evidence (L : LocalGlobalPackage) (E : LocalGlobalEvidence L) :
    LocalGlobalClosed L := by
  exact And.intro E.localSolutionsClosed (And.intro E.globalSolutionsClosed (And.intro E.localToGlobalImplicationClosed E.obstructionGroupClosed))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse