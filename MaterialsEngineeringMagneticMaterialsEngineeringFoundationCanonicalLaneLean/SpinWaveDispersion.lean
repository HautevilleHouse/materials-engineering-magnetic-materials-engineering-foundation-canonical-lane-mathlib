import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeConstant : ℝ
  saturationMagnetization : ℝ
  waveVector : ℝ
  frequency : ℝ → ℝ
  dispersionRelation : Prop

structure SpinWaveDispersionEvidence (P : SpinWaveDispersionPackage) where
  exchangeConstantClosed : P.exchangeConstant = 2.1
  saturationMagnetizationClosed : P.saturationMagnetization = 0.86
  dispersionRelationClosed : P.dispersionRelation

def SpinWaveDispersionClosed (P : SpinWaveDispersionPackage) : Prop :=
  P.exchangeConstant = 2.1 ∧ P.saturationMagnetization = 0.86 ∧ P.dispersionRelation

theorem spin_wave_dispersion_closed_from_evidence (P : SpinWaveDispersionPackage)
    (E : SpinWaveDispersionEvidence P) : SpinWaveDispersionClosed P := by
  exact And.intro E.exchangeConstantClosed (And.intro E.saturationMagnetizationClosed E.dispersionRelationClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse