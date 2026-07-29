import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.KTheoryAdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

def bridgeClosed (A : KTheoryAdmissibleClass) : Prop :=
  KTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : KTheoryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse