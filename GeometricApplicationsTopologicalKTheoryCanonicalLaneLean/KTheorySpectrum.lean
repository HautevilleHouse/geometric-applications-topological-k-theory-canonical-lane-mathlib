import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheorySpectrum where
  indexCategory : Type u
  representingSpace : Type v
  homotopyGroups : ℕ → Type w
  periodicity : Prop
  bottPeriodicity : Prop
  periodicityTerm : periodicity
  bottPeriodicityTerm : bottPeriodicity

structure KTheorySpectrumEvidence (S : KTheorySpectrum) where
  periodicityClosed : S.periodicity
  bottPeriodicityClosed : S.bottPeriodicity

def KTheorySpectrumClosed (S : KTheorySpectrum) : Prop :=
  S.periodicity ∧ S.bottPeriodicity

theorem k_theory_spectrum_closed_from_evidence (S : KTheorySpectrum)
    (E : KTheorySpectrumEvidence S) : KTheorySpectrumClosed S := by
  exact And.intro E.periodicityClosed E.bottPeriodicityClosed

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse