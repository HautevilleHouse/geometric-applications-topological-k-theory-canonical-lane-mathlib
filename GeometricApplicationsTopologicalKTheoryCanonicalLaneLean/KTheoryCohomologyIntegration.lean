import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricApplicationsTopologicalKTheoryCanonicalLaneLean

structure KTheoryCohomologyIntegrationPackage where
  pushforwardDefined : Prop
  projectionFormula : Prop
  riemannRochStatement : Prop
  chernCharacterDefined : Prop

structure KTheoryCohomologyIntegrationEvidence (I : KTheoryCohomologyIntegrationPackage) where
  pushforwardDefinedClosed : I.pushforwardDefined
  projectionFormulaClosed : I.projectionFormula
  riemannRochStatementClosed : I.riemannRochStatement
  chernCharacterDefinedClosed : I.chernCharacterDefined

def KTheoryCohomologyIntegrationClosed (I : KTheoryCohomologyIntegrationPackage) : Prop :=
  I.pushforwardDefined ∧ I.projectionFormula ∧
  I.riemannRochStatement ∧ I.chernCharacterDefined

theorem k_theory_cohomology_integration_closed_from_evidence
    (I : KTheoryCohomologyIntegrationPackage) (E : KTheoryCohomologyIntegrationEvidence I) :
    KTheoryCohomologyIntegrationClosed I := by
  exact And.intro E.pushforwardDefinedClosed
    (And.intro E.projectionFormulaClosed
      (And.intro E.riemannRochStatementClosed E.chernCharacterDefinedClosed))

end GeometricApplicationsTopologicalKTheoryCanonicalLaneLean
end HautevilleHouse