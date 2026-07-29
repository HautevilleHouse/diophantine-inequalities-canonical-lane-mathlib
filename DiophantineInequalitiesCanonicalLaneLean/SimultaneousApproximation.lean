import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure SimultaneousApproximationPackage where
  linearForms : List (List ℚ)
  targetAccuracy : ℚ
  minkowskiBound : ℚ
  distanceBound : ℚ
  minkowskiCondition : Prop
  distanceCondition : Prop
  minkowskiConditionTerm : minkowskiCondition
  distanceConditionTerm : distanceCondition

structure SimultaneousApproximationEvidence (P : SimultaneousApproximationPackage) where
  minkowskiConditionClosed : P.minkowskiCondition
  distanceConditionClosed : P.distanceCondition

def SimultaneousApproximationClosed (P : SimultaneousApproximationPackage) : Prop :=
  P.minkowskiCondition ∧ P.distanceCondition

theorem simultaneous_approximation_closed_from_evidence
    (P : SimultaneousApproximationPackage) (E : SimultaneousApproximationEvidence P) :
    SimultaneousApproximationClosed P := by
  exact And.intro E.minkowskiConditionClosed E.distanceConditionClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse
