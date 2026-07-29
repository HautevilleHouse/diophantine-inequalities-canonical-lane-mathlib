import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure HardyLittlewoodPackage where
  circleMethodApplied : Prop
  exponentialSumsBounded : Prop
  majorArcsControlled : Prop
  minorArcsEstimated : Prop
  asymptoticFormulaDerived : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  circleMethodAppliedClosed : H.circleMethodApplied
  exponentialSumsBoundedClosed : H.exponentialSumsBounded
  majorArcsControlledClosed : H.majorArcsControlled
  minorArcsEstimatedClosed : H.minorArcsEstimated
  asymptoticFormulaDerivedClosed : H.asymptoticFormulaDerived

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.circleMethodApplied ∧ H.exponentialSumsBounded ∧
  H.majorArcsControlled ∧ H.minorArcsEstimated ∧
  H.asymptoticFormulaDerived

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.circleMethodAppliedClosed
    (And.intro E.exponentialSumsBoundedClosed
      (And.intro E.majorArcsControlledClosed
        (And.intro E.minorArcsEstimatedClosed E.asymptoticFormulaDerivedClosed)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse