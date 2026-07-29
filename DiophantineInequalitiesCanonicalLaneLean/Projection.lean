import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def diophantineProjection : Projection DiophantineEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem diophantine_projection_idempotent (x : DiophantineEndgameState) :
    diophantineProjection.toFun (diophantineProjection.toFun x) = diophantineProjection.toFun x := by
  exact diophantineProjection.idempotent x

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse