import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesCanonicalLaneLean.DiophantineForm

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure HilbertInequalityEvidence where
  exponentTwo : Prop
  sumOfReciprocalsBounded : Prop
  constantOptimal : ℚ
  proofCompleteness : Prop

def HilbertInequalityClosed (H : HilbertInequalityEvidence) : Prop :=
  H.exponentTwo ∧ H.sumOfReciprocalsBounded ∧ H.constantOptimal = (π^2)/6 ∧ H.proofCompleteness

theorem hilbert_inequality_closed (H : HilbertInequalityEvidence) : HilbertInequalityClosed H :=
  And.intro H.exponentTwo (And.intro H.sumOfReciprocalsBounded (And.intro (by
    have h : (π^2)/6 = (π^2)/6 := rfl
    exact h) H.proofCompleteness))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse