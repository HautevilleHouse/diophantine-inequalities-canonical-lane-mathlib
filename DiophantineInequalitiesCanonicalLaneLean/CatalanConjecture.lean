import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure CatalanConjecturePackage where
  exponents : ℕ × ℕ
  uniqueSolution : Prop
  solution : ℤ × ℤ
  bound : ℕ

structure CatalanConjectureEvidence (C : CatalanConjecturePackage) where
  uniqueSolutionClosed : C.uniqueSolution
  boundClosed : C.bound > 0

def CatalanConjectureClosed (C : CatalanConjecturePackage) : Prop :=
  C.uniqueSolution ∧ C.bound > 0

theorem catalan_conjecture_closed_from_evidence (C : CatalanConjecturePackage) (E : CatalanConjectureEvidence C) : CatalanConjectureClosed C := by
  exact And.intro E.uniqueSolutionClosed E.boundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse