import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.MagneticOrderParameter

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type u
  spinConfig : Type v
  couplingStrength : ℝ
  exchangeCoupling : Prop
  externalField : ℝ
  magnetization : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  exchangeCouplingClosed : I.exchangeCoupling
  magnetizationClosed : I.magnetization

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.exchangeCoupling ∧ I.magnetization

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) :
    IsingModelClosed I := by
  exact And.intro E.exchangeCouplingClosed E.magnetizationClosed

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse