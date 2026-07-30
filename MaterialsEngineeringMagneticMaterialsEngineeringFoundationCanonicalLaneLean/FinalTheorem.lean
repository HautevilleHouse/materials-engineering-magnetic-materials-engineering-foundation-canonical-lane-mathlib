import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

def ConstrainedMagneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_magnetic_endgame (A : AdmissibleClass) :
    ConstrainedMagneticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse