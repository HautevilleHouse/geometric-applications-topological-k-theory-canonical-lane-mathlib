import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : KTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  KTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse