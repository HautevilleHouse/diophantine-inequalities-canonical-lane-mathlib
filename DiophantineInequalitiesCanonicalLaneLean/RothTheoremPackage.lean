import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure RothTheoremPackage where
  threeTermArithmeticProgression : Prop
  densityIncrement : Prop
  FourierAnalyticStep : Prop
  regularityLemmaApplied : Prop
  boundOnRoth : Prop

structure RothTheoremEvidence (R : RothTheoremPackage) where
  threeTermArithmeticProgressionClosed : R.threeTermArithmeticProgression
  densityIncrementClosed : R.densityIncrement
  FourierAnalyticStepClosed : R.FourierAnalyticStep
  regularityLemmaAppliedClosed : R.regularityLemmaApplied
  boundOnRothClosed : R.boundOnRoth

def RothTheoremClosed (R : RothTheoremPackage) : Prop :=
  R.threeTermArithmeticProgression ∧ R.densityIncrement ∧
  R.FourierAnalyticStep ∧ R.regularityLemmaApplied ∧
  R.boundOnRoth

theorem roth_theorem_closed_from_evidence (R : RothTheoremPackage)
    (E : RothTheoremEvidence R) : RothTheoremClosed R := by
  exact And.intro E.threeTermArithmeticProgressionClosed
    (And.intro E.densityIncrementClosed
      (And.intro E.FourierAnalyticStepClosed
        (And.intro E.regularityLemmaAppliedClosed E.boundOnRothClosed)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse