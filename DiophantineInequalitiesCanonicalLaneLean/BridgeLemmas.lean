import DiophantineInequalitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse