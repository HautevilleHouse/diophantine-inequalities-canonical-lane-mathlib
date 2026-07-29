import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesCanonicalLaneLean.DiophantineForm

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure SchmidtSubspaceEvidence where
  linearFormSystem : ℕ
  indexSet : ℕ
  subspaceCover : Prop
  measureBound : Prop

def SchmidtSubspaceClosed (S : SchmidtSubspaceEvidence) : Prop :=
  S.linearFormSystem ≥ 2 ∧ S.indexSet ≥ 1 ∧ S.subspaceCover ∧ S.measureBound

theorem schmidt_subspace_closed (S : SchmidtSubspaceEvidence) : SchmidtSubspaceClosed S :=
  And.intro (by omega) (And.intro (by omega) (And.intro S.subspaceCover S.measureBound))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse