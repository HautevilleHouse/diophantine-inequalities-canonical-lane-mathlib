import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure DiophantineForm (F : Type u) [Field F] where
  numVariables : ℕ
  degree : ℕ
  homogeneous : Bool
  coefficients : F → F
  formEvaluation : (Fin numVariables → F) → F

def DiophantineFormClosed {F : Type u} [Field F] (df : DiophantineForm F) : Prop :=
  df.homogeneous → df.degree > 0 → True

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse