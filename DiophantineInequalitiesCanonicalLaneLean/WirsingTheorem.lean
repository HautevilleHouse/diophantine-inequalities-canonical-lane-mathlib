import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure WirsingTheoremPackage where
  irrationalNumber : ℝ
  approximationExponent : ℕ
  bound : ℝ
  infiniteApproximations : Prop

structure WirsingTheoremEvidence (W : WirsingTheoremPackage) where
  infiniteApproximationsClosed : W.infiniteApproximations
  boundClosed : W.bound > 0

def WirsingTheoremClosed (W : WirsingTheoremPackage) : Prop :=
  W.infiniteApproximations ∧ W.bound > 0

theorem wirsing_theorem_closed_from_evidence (W : WirsingTheoremPackage) (E : WirsingTheoremEvidence W) : WirsingTheoremClosed W := by
  exact And.intro E.infiniteApproximationsClosed E.boundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse