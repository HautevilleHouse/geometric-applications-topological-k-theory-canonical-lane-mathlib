import topological_k_theory_geometry.AdmissibleClass
import Topology.KTheory

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  vectorBundle : Type _
  compactSupport : Prop

structure KTheoryAdmittedObject where
  space : KTheorySpace
  cStarAlgebra : Type _
  topologicalKGroup : ℤ
  bottPeriodicity : Prop
  conclusion : bottPeriodicity

structure KTheoryEndgameState where
  object : KTheoryAdmittedObject

def KTheoryWitnessClosed (O : KTheoryAdmittedObject) : Prop :=
  O.bottPeriodicity

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse