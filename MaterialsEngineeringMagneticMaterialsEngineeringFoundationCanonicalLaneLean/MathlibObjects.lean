import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlibCore

structure MagneticMaterial where
  carrier : Type
  topology : TopologicalSpace carrier
  magnetizationField : carrier → ℝ × ℝ × ℝ
  exchangeConstant : ℝ
  anisotropyConstant : ℝ
  appliedField : ℝ × ℝ × ℝ

tructure MagneticAdmittedObject where
  material : MagneticMaterial
  belowCurieTemp : Prop
  ferromagneticOrder : Prop
  conclusion : ferromagneticOrder

deed MagneticState where
  object : MagneticAdmittedObject

def MagneticWitnessClosed (O : MagneticAdmittedObject) : Prop :=
  O.ferromagneticOrder

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse