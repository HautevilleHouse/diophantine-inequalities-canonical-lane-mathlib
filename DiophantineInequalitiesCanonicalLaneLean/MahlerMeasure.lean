import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure MahlerMeasurePackage where
  polynomial : ℤ[X]
  mahlerMeasure : ℚ
  heightBound : ℚ
  lehmerCondition : Prop
  heightCondition : Prop
  lehmerConditionTerm : lehmerCondition
  heightConditionTerm : heightCondition

structure MahlerMeasureEvidence (P : MahlerMeasurePackage) where
  lehmerConditionClosed : P.lehmerCondition
  heightConditionClosed : P.heightCondition

def MahlerMeasureClosed (P : MahlerMeasurePackage) : Prop :=
  P.lehmerCondition ∧ P.heightCondition

theorem mahler_measure_closed_from_evidence
    (P : MahlerMeasurePackage) (E : MahlerMeasureEvidence P) :
    MahlerMeasureClosed P := by
  exact And.intro E.lehmerConditionClosed E.heightConditionClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse
