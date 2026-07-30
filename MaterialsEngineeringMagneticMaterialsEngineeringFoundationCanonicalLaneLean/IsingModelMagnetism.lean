import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type u
  spin : Type v
  interactionEnergy : Prop
  exchangeCoupling : Prop
  hamiltonianDefined : Prop
  partitionFunctionDefined : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  interactionEnergyClosed : I.interactionEnergy
  exchangeCouplingClosed : I.exchangeCoupling
  hamiltonianDefinedClosed : I.hamiltonianDefined
  partitionFunctionDefinedClosed : I.partitionFunctionDefined

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.interactionEnergy ∧ I.exchangeCoupling ∧ I.hamiltonianDefined ∧ I.partitionFunctionDefined

theorem ising_model_closed_from_evidence (I : IsingModelPackage)
    (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.interactionEnergyClosed
    (And.intro E.exchangeCouplingClosed
      (And.intro E.hamiltonianDefinedClosed E.partitionFunctionDefinedClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse