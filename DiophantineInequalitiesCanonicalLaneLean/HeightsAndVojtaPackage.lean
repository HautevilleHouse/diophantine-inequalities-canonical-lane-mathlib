import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure HeightsAndVojtaPackage where
  heightFunctionDefined : Prop
  northcottPropertyEstablished : Prop
  vojaConjectureFormulated : Prop
  discriminantEstimates : Prop
  abcConjectureConnection : Prop

structure HeightsAndVojtaEvidence (H : HeightsAndVojtaPackage) where
  heightFunctionDefinedClosed : H.heightFunctionDefined
  northcottPropertyEstablishedClosed : H.northcottPropertyEstablished
  vojaConjectureFormulatedClosed : H.vojaConjectureFormulated
  discriminantEstimatesClosed : H.discriminantEstimates
  abcConjectureConnectionClosed : H.abcConjectureConnection

def HeightsAndVojtaClosed (H : HeightsAndVojtaPackage) : Prop :=
  H.heightFunctionDefined ∧ H.northcottPropertyEstablished ∧
  H.vojaConjectureFormulated ∧ H.discriminantEstimates ∧
  H.abcConjectureConnection

theorem heights_and_vojta_closed_from_evidence (H : HeightsAndVojtaPackage)
    (E : HeightsAndVojtaEvidence H) : HeightsAndVojtaClosed H := by
  exact And.intro E.heightFunctionDefinedClosed
    (And.intro E.northcottPropertyEstablishedClosed
      (And.intro E.vojaConjectureFormulatedClosed
        (And.intro E.discriminantEstimatesClosed E.abcConjectureConnectionClosed)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse