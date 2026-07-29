import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryGaugeTheoryPackage where
  instantonModuliSpace : Type u
  dimersAndTopologicalCharge : Prop
  anomalyCancellation : Prop
  magneticMonopoleClassification : Prop

structure KTheoryGaugeTheoryEvidence (G : KTheoryGaugeTheoryPackage) where
  dimersAndTopologicalChargeClosed : G.dimersAndTopologicalCharge
  anomalyCancellationClosed : G.anomalyCancellation
  magneticMonopoleClassificationClosed : G.magneticMonopoleClassification

def KTheoryGaugeTheoryClosed (G : KTheoryGaugeTheoryPackage) : Prop :=
  G.dimersAndTopologicalCharge ∧ G.anomalyCancellation ∧ G.magneticMonopoleClassification

theorem k_theory_gauge_theory_closed_from_evidence
    (G : KTheoryGaugeTheoryPackage) (E : KTheoryGaugeTheoryEvidence G) :
    KTheoryGaugeTheoryClosed G := by
  exact And.intro E.dimersAndTopologicalChargeClosed
    (And.intro E.anomalyCancellationClosed E.magneticMonopoleClassificationClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse