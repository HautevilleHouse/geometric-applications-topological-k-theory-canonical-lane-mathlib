import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryRingStructurePackage where
  tensorProductDefined : Prop
  productAssociative : Prop
  productCommutative : Prop
  unitElement : Prop

structure KTheoryRingStructureEvidence (K : KTheoryRingStructurePackage) where
  tensorProductDefinedClosed : K.tensorProductDefined
  productAssociativeClosed : K.productAssociative
  productCommutativeClosed : K.productCommutative
  unitElementClosed : K.unitElement

def KTheoryRingStructureClosed (K : KTheoryRingStructurePackage) : Prop :=
  K.tensorProductDefined ∧ K.productAssociative ∧
  K.productCommutative ∧ K.unitElement

theorem k_theory_ring_structure_closed_from_evidence
    (K : KTheoryRingStructurePackage) (E : KTheoryRingStructureEvidence K) :
    KTheoryRingStructureClosed K := by
  exact And.intro E.tensorProductDefinedClosed
    (And.intro E.productAssociativeClosed
      (And.intro E.productCommutativeClosed E.unitElementClosed))

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse