import DiophantineInequalitiesCanonicalLaneLean.RestrictedLocalGlobalPackage

/-!
# Endgame Equivalence Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure EndgameEquivalencePackage where
  mainTheoremStatement : Prop
  equivalentReducedForm : Prop
  reductionProven : Prop

structure EndgameEquivalenceEvidence (E : EndgameEquivalencePackage) where
  mainTheoremStatementClosed : E.mainTheoremStatement
  equivalentReducedFormClosed : E.equivalentReducedForm
  reductionProvenClosed : E.reductionProven

def EndgameEquivalenceClosed (E : EndgameEquivalencePackage) : Prop :=
  E.mainTheoremStatement ∧ E.equivalentReducedForm ∧ E.reductionProven

theorem endgame_equivalence_closed_from_evidence (E : EndgameEquivalencePackage) (Ev : EndgameEquivalenceEvidence E) :
    EndgameEquivalenceClosed E := by
  exact And.intro Ev.mainTheoremStatementClosed (And.intro Ev.equivalentReducedFormClosed Ev.reductionProvenClosed)

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse