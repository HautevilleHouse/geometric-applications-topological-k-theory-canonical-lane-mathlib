import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryAdmissibleClass where
  object : KTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def KTheoryAdmittedClosure (A : KTheoryAdmissibleClass) : Prop :=
  KTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse