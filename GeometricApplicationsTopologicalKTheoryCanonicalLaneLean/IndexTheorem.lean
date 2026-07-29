import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure IndexTheorem where
  manifold : Type u
  topology : TopologicalSpace manifold
  ellipticOperator : Type v
  symbolClass : Prop
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexFormula : Prop
  indexFormulaTerm : indexFormula
  symbolClassTerm : symbolClass

def IndexTheoremClosed (I : IndexTheorem) : Prop :=
  I.symbolClass ∧ I.indexFormula

structure IndexTheoremEvidence (I : IndexTheorem) where
  symbolClassClosed : I.symbolClass
  indexFormulaClosed : I.indexFormula

theorem index_theorem_closed_from_evidence (I : IndexTheorem)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.symbolClassClosed E.indexFormulaClosed

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse