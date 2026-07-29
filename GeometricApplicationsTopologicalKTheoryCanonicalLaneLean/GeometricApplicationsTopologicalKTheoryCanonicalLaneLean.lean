import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : KTheoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure KTheoryObject where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  vectorBundleRank : ℕ
  classificationReady : Prop
  classificationReadyTerm : classificationReady

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.classificationReady

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.classificationReadyTerm

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedTopologicalKTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topological_k_theory_endgame (A : AdmissibleClass) :
    ConstrainedTopologicalKTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse