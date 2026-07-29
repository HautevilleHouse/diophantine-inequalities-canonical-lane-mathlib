import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure ThueEquationPackage where
  polynomial : ℤ[X]
  degree : ℕ
  irreducible : Prop
  bound : ℕ

structure ThueEquationEvidence (T : ThueEquationPackage) where
  irreducibleClosed : T.irreducible
  boundClosed : T.bound > 0

def ThueEquationClosed (T : ThueEquationPackage) : Prop :=
  T.irreducible ∧ T.bound > 0

theorem thue_equation_closed_from_evidence (T : ThueEquationPackage) (E : ThueEquationEvidence T) : ThueEquationClosed T := by
  exact And.intro E.irreducibleClosed E.boundClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse