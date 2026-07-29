import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure BakerTheoremPackage where
  linearForm : ℤ → ℤ → ℤ
  coefficients : List ℤ
  bound : ℕ
  linearIndependent : Prop

structure BakerTheoremEvidence (B : BakerTheoremPackage) where
  linearIndependentClosed : B.linearIndependent
  boundClosed : B.bound > 0

def BakerTheoremClosed (B : BakerTheoremPackage) : Prop :=
  B.linearIndependent ∧ B.bound > 0

theorem baker_theorem_closed_from_evidence (B : BakerTheoremPackage) (E : BakerTheoremEvidence B) : BakerTheoremClosed B := by
  exact And.intro E.linearIndependentClosed E.boundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse