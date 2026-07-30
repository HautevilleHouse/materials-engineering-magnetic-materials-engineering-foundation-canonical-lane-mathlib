import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure IsingModel where
  spinConfiguration : Type
  exchangeInteraction : ℝ
  thermalFluctuation : ℝ
  hamiltonianDefined : Prop
  partitionFunctionDefined : Prop
  magnetizationComputed : Prop
  hamiltonianDefinedClosed : hamiltonianDefined
  partitionFunctionDefinedClosed : partitionFunctionDefined
  magnetizationComputedClosed : magnetizationComputed

def IsingModelClosed (I : IsingModel) : Prop :=
  I.hamiltonianDefined ∧ I.partitionFunctionDefined ∧ I.magnetizationComputed

theorem ising_model_closed (I : IsingModel) : IsingModelClosed I :=
  And.intro I.hamiltonianDefinedClosed (And.intro I.partitionFunctionDefinedClosed I.magnetizationComputedClosed)

structure MagneticDomain where
  domainWallEnergy : ℝ
  strayFieldEnergy : ℝ
  wallThickness : ℝ
  energyMinimized : Prop
  domainConfigurationStable : Prop
  energyMinimizedClosed : energyMinimized
  domainConfigurationStableClosed : domainConfigurationStable

def DomainClosed (D : MagneticDomain) : Prop :=
  D.energyMinimized ∧ D.domainConfigurationStable

theorem domain_closed (D : MagneticDomain) : DomainClosed D :=
  And.intro D.energyMinimizedClosed D.domainConfigurationStableClosed

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse