import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure RothTheoremPackage where
  algebraicNumber : ℚ
  approximationExponent : ℕ
  finiteManyApproximations : Prop
  approximationBound : ℝ

structure RothTheoremEvidence (R : RothTheoremPackage) where
  finiteManyApproximationsClosed : R.finiteManyApproximations
  approximationBoundClosed : R.approximationBound > 0

def RothTheoremClosed (R : RothTheoremPackage) : Prop :=
  R.finiteManyApproximations ∧ R.approximationBound > 0

theorem roth_theorem_closed_from_evidence (R : RothTheoremPackage) (E : RothTheoremEvidence R) : RothTheoremClosed R := by
  exact And.intro E.finiteManyApproximationsClosed E.approximationBoundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse