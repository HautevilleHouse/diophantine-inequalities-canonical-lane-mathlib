import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure SubspaceTheoremPackage where
  linearFormsDefined : Prop
  parameterSpaceFinite : Prop
  solutionSetDescription : Prop
  heightBoundDerived : Prop
  applicationToDiophantine : Prop

structure SubspaceTheoremEvidence (S : SubspaceTheoremPackage) where
  linearFormsDefinedClosed : S.linearFormsDefined
  parameterSpaceFiniteClosed : S.parameterSpaceFinite
  solutionSetDescriptionClosed : S.solutionSetDescription
  heightBoundDerivedClosed : S.heightBoundDerived
  applicationToDiophantineClosed : S.applicationToDiophantine

def SubspaceTheoremClosed (S : SubspaceTheoremPackage) : Prop :=
  S.linearFormsDefined ∧ S.parameterSpaceFinite ∧
  S.solutionSetDescription ∧ S.heightBoundDerived ∧
  S.applicationToDiophantine

theorem subspace_theorem_closed_from_evidence (S : SubspaceTheoremPackage)
    (E : SubspaceTheoremEvidence S) : SubspaceTheoremClosed S := by
  exact And.intro E.linearFormsDefinedClosed
    (And.intro E.parameterSpaceFiniteClosed
      (And.intro E.solutionSetDescriptionClosed
        (And.intro E.heightBoundDerivedClosed E.applicationToDiophantineClosed)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse