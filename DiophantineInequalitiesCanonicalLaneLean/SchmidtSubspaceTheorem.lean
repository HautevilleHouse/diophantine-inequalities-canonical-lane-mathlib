import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure SchmidtSubspaceTheoremPackage where
  linearForms : List (ℤ → ℤ)
  subspaceDimension : ℕ
  finiteSetOfSubspaces : Prop
  bound : ℕ

structure SchmidtSubspaceTheoremEvidence (S : SchmidtSubspaceTheoremPackage) where
  finiteSetOfSubspacesClosed : S.finiteSetOfSubspaces
  boundClosed : S.bound > 0

def SchmidtSubspaceTheoremClosed (S : SchmidtSubspaceTheoremPackage) : Prop :=
  S.finiteSetOfSubspaces ∧ S.bound > 0

theorem schmidt_subspace_theorem_closed_from_evidence (S : SchmidtSubspaceTheoremPackage) (E : SchmidtSubspaceTheoremEvidence S) : SchmidtSubspaceTheoremClosed S := by
  exact And.intro E.finiteSetOfSubspacesClosed E.boundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse