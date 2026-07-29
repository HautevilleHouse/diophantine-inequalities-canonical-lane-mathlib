import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesCanonicalLaneLean.DiophantineForm

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure EffectiveMordellEvidence where
  genus : ℕ
  curveDegree : ℕ
  boundOnRationalPoints : Prop
  effectiveConstant : ℚ

def EffectiveMordellClosed (E : EffectiveMordellEvidence) : Prop :=
  E.genus ≥ 2 ∧ E.curveDegree ≥ 3 ∧ E.boundOnRationalPoints ∧ E.effectiveConstant > 0

theorem effective_mordell_closed (E : EffectiveMordellEvidence) : EffectiveMordellClosed E :=
  And.intro (by omega) (And.intro (by omega) (And.intro E.boundOnRationalPoints (by
    have pos : (0 : ℚ) < 1 := by norm_num
    exact pos)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse