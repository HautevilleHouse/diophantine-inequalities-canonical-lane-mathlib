import DiophantineInequalitiesCanonicalLaneLean.HeightGapPackage

/-!
# Restricted Local-Global Principle Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure RestrictedLocalGlobalPackage where
  restrictedLocalSolutions : Prop
  restrictedGlobalSolutions : Prop
  restrictedImplication : Prop
  counterexampleBound : Prop

structure RestrictedLocalGlobalEvidence (R : RestrictedLocalGlobalPackage) where
  restrictedLocalSolutionsClosed : R.restrictedLocalSolutions
  restrictedGlobalSolutionsClosed : R.restrictedGlobalSolutions
  restrictedImplicationClosed : R.restrictedImplication
  counterexampleBoundClosed : R.counterexampleBound

def RestrictedLocalGlobalClosed (R : RestrictedLocalGlobalPackage) : Prop :=
  R.restrictedLocalSolutions ∧ R.restrictedGlobalSolutions ∧ R.restrictedImplication ∧ R.counterexampleBound

theorem restricted_local_global_closed_from_evidence (R : RestrictedLocalGlobalPackage) (E : RestrictedLocalGlobalEvidence R) :
    RestrictedLocalGlobalClosed R := by
  exact And.intro E.restrictedLocalSolutionsClosed (And.intro E.restrictedGlobalSolutionsClosed (And.intro E.restrictedImplicationClosed E.counterexampleBoundClosed))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse