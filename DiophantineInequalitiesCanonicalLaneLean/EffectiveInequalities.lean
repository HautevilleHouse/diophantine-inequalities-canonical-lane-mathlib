import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure EffectiveInequalitiesPackage where
  discriminantBound : ℚ
  regulatorBound : ℚ
  classNumberBound : ℚ
  discriminantCondition : Prop
  regulatorCondition : Prop
  classNumberCondition : Prop
  discriminantConditionTerm : discriminantCondition
  regulatorConditionTerm : regulatorCondition
  classNumberConditionTerm : classNumberCondition

structure EffectiveInequalitiesEvidence (P : EffectiveInequalitiesPackage) where
  discriminantConditionClosed : P.discriminantCondition
  regulatorConditionClosed : P.regulatorCondition
  classNumberConditionClosed : P.classNumberCondition

def EffectiveInequalitiesClosed (P : EffectiveInequalitiesPackage) : Prop :=
  P.discriminantCondition ∧ P.regulatorCondition ∧ P.classNumberCondition

theorem effective_inequalities_closed_from_evidence
    (P : EffectiveInequalitiesPackage) (E : EffectiveInequalitiesEvidence P) :
    EffectiveInequalitiesClosed P := by
  exact And.intro E.discriminantConditionClosed
    (And.intro E.regulatorConditionClosed E.classNumberConditionClosed)

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse
