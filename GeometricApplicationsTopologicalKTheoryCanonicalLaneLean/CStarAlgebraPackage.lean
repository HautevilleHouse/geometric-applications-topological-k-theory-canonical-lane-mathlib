import topological_k_theory_geometry.KTheoryBundlePackage

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure CStarAlgebraPackage (B : KTheoryBundlePackage) where
  algebraType : Type _
  involution : Prop
  norm : Prop
  completeness : Prop
  cStarIdentity : Prop
  kTheoryGroup : ℤ

structure CStarAlgebraEvidence {B : KTheoryBundlePackage} (A : CStarAlgebraPackage B) where
  involutionClosed : A.involution
  normClosed : A.norm
  completenessClosed : A.completeness
  cStarIdentityClosed : A.cStarIdentity

def CStarAlgebraClosed {B : KTheoryBundlePackage} (A : CStarAlgebraPackage B) : Prop :=
  A.involution ∧ A.norm ∧ A.completeness ∧ A.cStarIdentity

theorem c_star_algebra_closed_from_evidence
    {B : KTheoryBundlePackage} (A : CStarAlgebraPackage B) (E : CStarAlgebraEvidence A) :
    CStarAlgebraClosed A := by
  exact And.intro E.involutionClosed
    (And.intro E.normClosed
      (And.intro E.completenessClosed E.cStarIdentityClosed))

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse