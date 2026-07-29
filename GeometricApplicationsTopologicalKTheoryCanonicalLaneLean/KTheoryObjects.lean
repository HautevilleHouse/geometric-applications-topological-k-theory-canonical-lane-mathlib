import GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.KTheoryAdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KTheoryAdmittedObject where
  space : KTheorySpace
  compactHausdorff : Prop
  vectorBundleIso : Prop
  bottPeriodicityIso : Prop
  conclusion : Prop

structure KTheoryEndgameState where
  object : KTheoryAdmittedObject

def KTheoryWitnessClosed (O : KTheoryAdmittedObject) : Prop :=
  O.conclusion

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse