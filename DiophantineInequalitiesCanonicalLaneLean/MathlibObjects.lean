import DiophantineInequalitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiophantineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  polynomialEquation : Prop
  integerSolutions : Prop
  conclusion : integerSolutions

structure DiophantineEndgameState where
  object : DiophantineAdmittedObject

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.integerSolutions

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse