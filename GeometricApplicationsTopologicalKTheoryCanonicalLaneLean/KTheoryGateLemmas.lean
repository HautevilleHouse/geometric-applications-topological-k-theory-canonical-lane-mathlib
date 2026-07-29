import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.KTheoryBridgeLemmas

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

def gateClosed (A : KTheoryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : KTheoryAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse