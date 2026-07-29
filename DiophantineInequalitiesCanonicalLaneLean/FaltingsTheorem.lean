import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure FaltingsTheoremPackage where
  curveGenus : ℕ
  finiteRationalPoints : Prop
  genusAtLeastTwo : Prop

structure FaltingsTheoremEvidence (F : FaltingsTheoremPackage) where
  finiteRationalPointsClosed : F.finiteRationalPoints
  genusAtLeastTwoClosed : F.genusAtLeastTwo

def FaltingsTheoremClosed (F : FaltingsTheoremPackage) : Prop :=
  F.finiteRationalPoints ∧ F.genusAtLeastTwo

theorem faltings_theorem_closed_from_evidence (F : FaltingsTheoremPackage) (E : FaltingsTheoremEvidence F) : FaltingsTheoremClosed F := by
  exact And.intro E.finiteRationalPointsClosed E.genusAtLeastTwoClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse