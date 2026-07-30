import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure IsingModelMeanFieldPackage where
  spinDimension : ℕ
  interactionStrength : ℝ
  externalField : ℝ
  temperature : ℝ
  partitionFunctionFormulated : Prop
  meanFieldEquation : Prop
  criticalTemperature : ℝ
  phaseTransitionCaptured : Prop

structure IsingModelMeanFieldEvidence (I : IsingModelMeanFieldPackage) where
  partitionFunctionFormulatedClosed : I.partitionFunctionFormulated
  meanFieldEquationClosed : I.meanFieldEquation
  phaseTransitionCapturedClosed : I.phaseTransitionCaptured

def IsingModelMeanFieldClosed (I : IsingModelMeanFieldPackage) : Prop :=
  I.partitionFunctionFormulated ∧ I.meanFieldEquation ∧ I.phaseTransitionCaptured

theorem ising_model_mean_field_closed_from_evidence (I : IsingModelMeanFieldPackage)
    (E : IsingModelMeanFieldEvidence I) : IsingModelMeanFieldClosed I := by
  exact And.intro E.partitionFunctionFormulatedClosed (And.intro E.meanFieldEquationClosed E.phaseTransitionCapturedClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
