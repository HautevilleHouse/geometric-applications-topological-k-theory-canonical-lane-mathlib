import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricApplicationsTopologicalKTheoryCanonicalLaneLean.VectorBundleClassification

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryGroup (M : Type u) [TopologicalSpace M] where
  generatorClass : Type v
  relation : generatorClass → generatorClass → Prop
  addition : generatorClass → generatorClass → generatorClass
  zeroElement : generatorClass
  inverse : generatorClass → generatorClass
  groupAxioms : Prop
  additiveIdentity : ∀ x : generatorClass, addition x zeroElement = x
  additiveInverse : ∀ x : generatorClass, addition x (inverse x) = zeroElement
  additiveAssociative : ∀ x y z : generatorClass, addition (addition x y) z = addition x (addition y z)
  additiveCommutative : ∀ x y : generatorClass, addition x y = addition y x

theorem group_axioms_from_fields (M : Type u) [TopologicalSpace M] (K : KTheoryGroup M) : K.groupAxioms := by
  exact And.intro K.additiveIdentity (And.intro K.additiveInverse (And.intro K.additiveAssociative K.additiveCommutative))

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse