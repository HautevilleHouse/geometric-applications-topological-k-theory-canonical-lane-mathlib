import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure AtiyahSingerIndexPackage where
  ellipticOperatorGiven : Type u
  analyticIndexDefined : Prop
  topologicalIndexDefined : Prop
  indexTheoremStatement : Prop

structure AtiyahSingerIndexEvidence (A : AtiyahSingerIndexPackage) where
  analyticIndexDefinedClosed : A.analyticIndexDefined
  topologicalIndexDefinedClosed : A.topologicalIndexDefined
  indexTheoremStatementClosed : A.indexTheoremStatement

def AtiyahSingerIndexClosed (A : AtiyahSingerIndexPackage) : Prop :=
  A.analyticIndexDefined ∧ A.topologicalIndexDefined ∧ A.indexTheoremStatement

theorem atiyah_singer_index_closed_from_evidence
    (A : AtiyahSingerIndexPackage) (E : AtiyahSingerIndexEvidence A) :
    AtiyahSingerIndexClosed A := by
  exact And.intro E.analyticIndexDefinedClosed
    (And.intro E.topologicalIndexDefinedClosed E.indexTheoremStatementClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse