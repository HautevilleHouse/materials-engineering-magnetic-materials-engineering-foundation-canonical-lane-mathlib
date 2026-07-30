import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.MagnetostaticEnergy
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.LLGEquation
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.SpinWaveExistence
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.MicromagneticEnergy

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure LLGFlowCertificate {G : MagnetostaticEnergyPackage} (F : LLGEquationPackage G) where
  gaugeChoice : Prop
  stronglyParabolicReduction : Prop
  deTurckVectorField : Prop
  pullbackRecoversLLG : Prop
  uniquenessCompatibility : Prop
  gaugeChoiceClosed : gaugeChoice
  stronglyParabolicReductionClosed : stronglyParabolicReduction
  deTurckVectorFieldClosed : deTurckVectorField
  pullbackRecoversLLGClosed : pullbackRecoversLLG
  uniquenessCompatibilityClosed : uniquenessCompatibility
  flowEvidence : LLGEquationEvidence F

def LLGFlowCertificateClosed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} (H : LLGFlowCertificate F) : Prop := H.gaugeChoice ∧ H.stronglyParabolicReduction ∧ H.deTurckVectorField ∧ H.pullbackRecoversLLG ∧ H.uniquenessCompatibility ∧ LLGEquationClosed F

theorem llg_flow_certificate_closed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} (H : LLGFlowCertificate F) : LLGFlowCertificateClosed H := by
  exact And.intro H.gaugeChoiceClosed (And.intro H.stronglyParabolicReductionClosed (And.intro H.deTurckVectorFieldClosed (And.intro H.pullbackRecoversLLGClosed (And.intro H.uniquenessCompatibilityClosed (llg_equation_closed_from_evidence F H.flowEvidence)))))

structure SpinWaveAnalyticCertificate {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} (S : SpinWaveExistencePackage F) where
  parabolicRegularity : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  continuationCriterion : Prop
  parabolicRegularityClosed : parabolicRegularity
  localExistenceIntervalClosed : localExistenceInterval
  uniquenessOnOverlapClosed : uniquenessOnOverlap
  continuationCriterionClosed : continuationCriterion
  spinWaveEvidence : SpinWaveExistenceEvidence S

def SpinWaveAnalyticCertificateClosed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} (C : SpinWaveAnalyticCertificate S) : Prop := C.parabolicRegularity ∧ C.localExistenceInterval ∧ C.uniquenessOnOverlap ∧ C.continuationCriterion ∧ SpinWaveExistenceClosed S

theorem spin_wave_analytic_certificate_closed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} (C : SpinWaveAnalyticCertificate S) : SpinWaveAnalyticCertificateClosed C := by
  exact And.intro C.parabolicRegularityClosed (And.intro C.localExistenceIntervalClosed (And.intro C.uniquenessOnOverlapClosed (And.intro C.continuationCriterionClosed (spin_wave_existence_closed_from_evidence S C.spinWaveEvidence))))

structure DomainWallAnalyticCertificate {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} (E : MicromagneticEnergyPackage S) where
  wallProfileConvergence : Prop
  energyMinimization : Prop
  wallProfileConvergenceClosed : wallProfileConvergence
  energyMinimizationClosed : energyMinimization
  energyEvidence : MicromagneticEnergyEvidence E

def DomainWallAnalyticCertificateClosed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} {E : MicromagneticEnergyPackage S} (C : DomainWallAnalyticCertificate E) : Prop := C.wallProfileConvergence ∧ C.energyMinimization ∧ MicromagneticEnergyClosed E

theorem domain_wall_analytic_certificate_closed {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} {E : MicromagneticEnergyPackage S} (C : DomainWallAnalyticCertificate E) : DomainWallAnalyticCertificateClosed C := by
  exact And.intro C.wallProfileConvergenceClosed (And.intro C.energyMinimizationClosed (micromagnetic_energy_closed_from_evidence E C.energyEvidence))

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse