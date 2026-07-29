import topological_k_theory_geometry.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse