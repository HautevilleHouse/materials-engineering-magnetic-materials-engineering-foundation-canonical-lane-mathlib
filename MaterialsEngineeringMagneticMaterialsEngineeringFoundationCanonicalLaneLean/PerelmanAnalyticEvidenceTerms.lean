import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure LLGFlowEvidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} (H : LLGFlowCertificate F) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversLLG : H.pullbackRecoversLLG
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : LLGEquationClosed F

def LLGFlowCertificate.evidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} (H : LLGFlowCertificate F) : LLGFlowEvidenceTerms H := {
  gaugeChoice := H.gaugeChoiceClosed
  stronglyParabolicReduction := H.stronglyParabolicReductionClosed
  deTurckVectorField := H.deTurckVectorFieldClosed
  pullbackRecoversLLG := H.pullbackRecoversLLGClosed
  uniquenessCompatibility := H.uniquenessCompatibilityClosed
  flowClosed := llg_equation_closed_from_evidence F H.flowEvidence
}

structure SpinWaveEvidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} (C : SpinWaveAnalyticCertificate S) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  spinWaveClosed : SpinWaveExistenceClosed S

def SpinWaveAnalyticCertificate.evidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} (C : SpinWaveAnalyticCertificate S) : SpinWaveEvidenceTerms C := {
  parabolicRegularity := C.parabolicRegularityClosed
  localExistenceInterval := C.localExistenceIntervalClosed
  uniquenessOnOverlap := C.uniquenessOnOverlapClosed
  continuationCriterion := C.continuationCriterionClosed
  spinWaveClosed := spin_wave_existence_closed_from_evidence S C.spinWaveEvidence
}

structure DomainWallEvidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} {E : MicromagneticEnergyPackage S} (C : DomainWallAnalyticCertificate E) where
  wallProfileConvergence : C.wallProfileConvergence
  energyMinimization : C.energyMinimization
  domainWallClosed : MicromagneticEnergyClosed E

def DomainWallAnalyticCertificate.evidenceTerms {G : MagnetostaticEnergyPackage} {F : LLGEquationPackage G} {S : SpinWaveExistencePackage F} {E : MicromagneticEnergyPackage S} (C : DomainWallAnalyticCertificate E) : DomainWallEvidenceTerms C := {
  wallProfileConvergence := C.wallProfileConvergenceClosed
  energyMinimization := C.energyMinimizationClosed
  domainWallClosed := micromagnetic_energy_closed_from_evidence E C.energyEvidence
}

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse