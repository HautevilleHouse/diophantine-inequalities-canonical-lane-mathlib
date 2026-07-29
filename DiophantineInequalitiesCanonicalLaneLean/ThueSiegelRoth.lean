import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure ThueSiegelRothPackage where
  polynomialDegree : ℕ
  irrationalAlpha : ℚ
  exponentBound : ℚ
  approximationConstant : ℚ
  rothCondition : Prop
  constantCondition : Prop
  rothConditionTerm : rothCondition
  constantConditionTerm : constantCondition

structure ThueSiegelRothEvidence (P : ThueSiegelRothPackage) where
  rothConditionClosed : P.rothCondition
  constantConditionClosed : P.constantCondition

def ThueSiegelRothClosed (P : ThueSiegelRothPackage) : Prop :=
  P.rothCondition ∧ P.constantCondition

theorem thue_siegel_roth_closed_from_evidence
    (P : ThueSiegelRothPackage) (E : ThueSiegelRothEvidence P) :
    ThueSiegelRothClosed P := by
  exact And.intro E.rothConditionClosed E.constantConditionClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse
