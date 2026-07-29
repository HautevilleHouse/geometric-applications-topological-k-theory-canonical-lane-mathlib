import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure BottPeriodicityPackage where
  groundField : Type u
  kGroupZero : Type v
  kGroupTwo : Type w
  groundFieldAlgebraicallyClosed : Prop
  isomorphismMap : kGroupZero → kGroupTwo
  periodicityStatement : Prop

structure BottPeriodicityEvidence (B : BottPeriodicityPackage) where
  groundFieldAlgebraicallyClosedClosed : B.groundFieldAlgebraicallyClosed
  isomorphismMapInvertible : ∀ y : B.kGroupTwo, ∃ x : B.kGroupZero, B.isomorphismMap x = y
  periodicityStatementClosed : B.periodicityStatement

def BottPeriodicityClosed (B : BottPeriodicityPackage) : Prop :=
  B.groundFieldAlgebraicallyClosed ∧ B.periodicityStatement

theorem bott_periodicity_closed_from_evidence (B : BottPeriodicityPackage)
    (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B :=
  And.intro E.groundFieldAlgebraicallyClosedClosed E.periodicityStatementClosed

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse
