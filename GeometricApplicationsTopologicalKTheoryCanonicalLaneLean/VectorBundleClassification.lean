import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure VectorBundleClassificationPackage where
  baseSpace : Type u
  fiberRank : Nat
  stableEquivalence : Prop
  characteristicClassesDetermined : Prop
  classificationTheorem : Prop

structure VectorBundleClassificationEvidence (V : VectorBundleClassificationPackage) where
  stableEquivalenceClosed : V.stableEquivalence
  characteristicClassesDeterminedClosed : V.characteristicClassesDetermined
  classificationTheoremClosed : V.classificationTheorem

def VectorBundleClassificationClosed (V : VectorBundleClassificationPackage) : Prop :=
  V.stableEquivalence ∧ V.characteristicClassesDetermined ∧ V.classificationTheorem

theorem vector_bundle_classification_closed_from_evidence
    (V : VectorBundleClassificationPackage) (E : VectorBundleClassificationEvidence V) :
    VectorBundleClassificationClosed V := by
  exact And.intro E.stableEquivalenceClosed
    (And.intro E.characteristicClassesDeterminedClosed E.classificationTheoremClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse