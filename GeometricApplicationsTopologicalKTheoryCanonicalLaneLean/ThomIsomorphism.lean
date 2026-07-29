import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure ThomSpacePackage where
  baseSpace : Type u
  vectorBundle : Type v
  thomSpace : Type w
  baseCompact : Prop
  bundleRankFinite : Prop
  thomSpaceOrientable : Prop

structure ThomIsomorphismEvidence (T : ThomSpacePackage) where
  baseCompactClosed : T.baseCompact
  bundleRankFiniteClosed : T.bundleRankFinite
  thomSpaceOrientableClosed : T.thomSpaceOrientable

def ThomIsomorphismClosed (T : ThomSpacePackage) : Prop :=
  T.baseCompact ∧ T.bundleRankFinite ∧ T.thomSpaceOrientable

theorem thom_isomorphism_closed_from_evidence (T : ThomSpacePackage)
    (E : ThomIsomorphismEvidence T) : ThomIsomorphismClosed T :=
  And.intro E.baseCompactClosed
    (And.intro E.bundleRankFiniteClosed E.thomSpaceOrientableClosed)

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse
