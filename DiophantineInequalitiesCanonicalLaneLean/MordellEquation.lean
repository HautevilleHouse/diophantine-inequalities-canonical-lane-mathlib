import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure MordellEquationPackage where
  polynomial : ℤ[X,Y]
  bound : ℕ
  finiteSolutions : Prop
  genusCondition : Prop

structure MordellEquationEvidence (M : MordellEquationPackage) where
  finiteSolutionsClosed : M.finiteSolutions
  genusConditionClosed : M.genusCondition

def MordellEquationClosed (M : MordellEquationPackage) : Prop :=
  M.finiteSolutions ∧ M.genusCondition

theorem mordell_equation_closed_from_evidence (M : MordellEquationPackage) (E : MordellEquationEvidence M) : MordellEquationClosed M := by
  exact And.intro E.finiteSolutionsClosed E.genusConditionClosed

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse