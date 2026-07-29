import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

/-!
# Infinite Descent Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure InfiniteDescentPackage where
  wellFoundedRelation : Prop
  minimalCounterexample : Prop
  descentStep : Prop
  contradictionFromMinimal : Prop

structure InfiniteDescentEvidence (D : InfiniteDescentPackage) where
  wellFoundedRelationClosed : D.wellFoundedRelation
  minimalCounterexampleClosed : D.minimalCounterexample
  descentStepClosed : D.descentStep
  contradictionFromMinimalClosed : D.contradictionFromMinimal

def InfiniteDescentClosed (D : InfiniteDescentPackage) : Prop :=
  D.wellFoundedRelation ∧ D.minimalCounterexample ∧ D.descentStep ∧ D.contradictionFromMinimal

theorem infinite_descent_closed_from_evidence (D : InfiniteDescentPackage) (E : InfiniteDescentEvidence D) :
    InfiniteDescentClosed D := by
  exact And.intro E.wellFoundedRelationClosed (And.intro E.minimalCounterexampleClosed (And.intro E.descentStepClosed E.contradictionFromMinimalClosed))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse