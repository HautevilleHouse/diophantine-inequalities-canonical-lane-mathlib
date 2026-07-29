import DiophantineInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesCanonicalLaneLean

structure SieveEstimatesPackage where
  sieveWeightDefined : Prop
  levelOfDistribution : Prop
  bilinearFormControlled : Prop
  typeIAndIIEstimates : Prop
  parityObstacleAddressed : Prop

structure SieveEstimatesEvidence (S : SieveEstimatesPackage) where
  sieveWeightDefinedClosed : S.sieveWeightDefined
  levelOfDistributionClosed : S.levelOfDistribution
  bilinearFormControlledClosed : S.bilinearFormControlled
  typeIAndIIEstimatesClosed : S.typeIAndIIEstimates
  parityObstacleAddressedClosed : S.parityObstacleAddressed

def SieveEstimatesClosed (S : SieveEstimatesPackage) : Prop :=
  S.sieveWeightDefined ∧ S.levelOfDistribution ∧
  S.bilinearFormControlled ∧ S.typeIAndIIEstimates ∧
  S.parityObstacleAddressed

theorem sieve_estimates_closed_from_evidence (S : SieveEstimatesPackage)
    (E : SieveEstimatesEvidence S) : SieveEstimatesClosed S := by
  exact And.intro E.sieveWeightDefinedClosed
    (And.intro E.levelOfDistributionClosed
      (And.intro E.bilinearFormControlledClosed
        (And.intro E.typeIAndIIEstimatesClosed E.parityObstacleAddressedClosed)))

end DiophantineInequalitiesCanonicalLaneLean
end HautevilleHouse