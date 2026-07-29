import topological_k_theory_geometry.KTheoryAdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryBundlePackage where
  baseManifold : Type _
  fiberType : Type _
  projection : Type _
  localTrivializations : Prop
  transitionFunctions : Prop
  vectorBundleStructure : Prop
  stableIsomorphism : Prop

structure KTheoryBundleEvidence (B : KTheoryBundlePackage) where
  localTrivializationsClosed : B.localTrivializations
  transitionFunctionsClosed : B.transitionFunctions
  vectorBundleStructureClosed : B.vectorBundleStructure
  stableIsomorphismClosed : B.stableIsomorphism

def KTheoryBundleClosed (B : KTheoryBundlePackage) : Prop :=
  B.localTrivializations ∧ B.transitionFunctions ∧ B.vectorBundleStructure ∧ B.stableIsomorphism

theorem k_theory_bundle_closed_from_evidence
    (B : KTheoryBundlePackage) (E : KTheoryBundleEvidence B) :
    KTheoryBundleClosed B := by
  exact And.intro E.localTrivializationsClosed
    (And.intro E.transitionFunctionsClosed
      (And.intro E.vectorBundleStructureClosed E.stableIsomorphismClosed))

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse