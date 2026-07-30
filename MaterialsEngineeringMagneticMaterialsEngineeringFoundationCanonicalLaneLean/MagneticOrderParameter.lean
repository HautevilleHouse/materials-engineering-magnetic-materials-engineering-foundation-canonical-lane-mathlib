import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure MagneticOrderParameterPackage where
  spinDensity : Type u
  magnetizationVector : Type v
  exchangeCoupling : Prop
  anisotropyField : Prop
  domainWallEnergy : Prop

structure MagneticOrderParameterEvidence (P : MagneticOrderParameterPackage) where
  exchangeCouplingClosed : P.exchangeCoupling
  anisotropyFieldClosed : P.anisotropyField
  domainWallEnergyClosed : P.domainWallEnergy

def MagneticOrderParameterClosed (P : MagneticOrderParameterPackage) : Prop :=
  P.exchangeCoupling ∧ P.anisotropyField ∧ P.domainWallEnergy

theorem magnetic_order_parameter_closed_from_evidence (P : MagneticOrderParameterPackage)
    (E : MagneticOrderParameterEvidence P) : MagneticOrderParameterClosed P := by
  exact And.intro E.exchangeCouplingClosed (And.intro E.anisotropyFieldClosed E.domainWallEnergyClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse