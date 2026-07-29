import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure VectorBundleIndexPackage where
  manifold : Type u
  vectorBundle : Type v
  indexMap : Type w
  manifoldCompact : Prop
  bundleContinuous : Prop
  indexMapContinuous : Prop

structure VectorBundleIndexEvidence (V : VectorBundleIndexPackage) where
  manifoldCompactClosed : V.manifoldCompact
  bundleContinuousClosed : V.bundleContinuous
  indexMapContinuousClosed : V.indexMapContinuous

def VectorBundleIndexClosed (V : VectorBundleIndexPackage) : Prop :=
  V.manifoldCompact ∧ V.bundleContinuous ∧ V.indexMapContinuous

theorem vector_bundle_index_closed_from_evidence (V : VectorBundleIndexPackage)
    (E : VectorBundleIndexEvidence V) : VectorBundleIndexClosed V :=
  And.intro E.manifoldCompactClosed
    (And.intro E.bundleContinuousClosed E.indexMapContinuousClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse
