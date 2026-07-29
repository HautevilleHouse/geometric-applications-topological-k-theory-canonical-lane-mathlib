import canonicalLaneMathlib.AdmissibleClass
import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.BridgeLemmas
import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

def ConstrainedTopologicalKTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topological_k_theory_endgame (A : AdmissibleClass) :
    ConstrainedTopologicalKTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse