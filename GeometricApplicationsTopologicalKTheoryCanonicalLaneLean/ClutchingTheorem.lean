import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure ClutchingTheorem where
  sphereBase : Prop
  clutchingFunction : Type u
  vectorBundleConstructed : Prop
  isomorphismClassification : Prop
  sphereBaseTerm : sphereBase
  clutchingFunctionDefined : True
  vectorBundleConstructedTerm : vectorBundleConstructed
  isomorphismClassificationTerm : isomorphismClassification

def ClutchingTheoremClosed (C : ClutchingTheorem) : Prop :=
  C.sphereBase ∧ C.vectorBundleConstructed ∧ C.isomorphismClassification

structure ClutchingTheoremEvidence (C : ClutchingTheorem) where
  sphereBaseClosed : C.sphereBase
  vectorBundleConstructedClosed : C.vectorBundleConstructed
  isomorphismClassificationClosed : C.isomorphismClassification

theorem clutching_theorem_closed_from_evidence (C : ClutchingTheorem)
    (E : ClutchingTheoremEvidence C) : ClutchingTheoremClosed C := by
  exact And.intro E.sphereBaseClosed
    (And.intro E.vectorBundleConstructedClosed E.isomorphismClassificationClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse