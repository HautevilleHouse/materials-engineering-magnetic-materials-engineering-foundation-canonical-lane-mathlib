import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MagneticMaterial where
  carrier : Type
  crystalStructure : Prop
  spinConfiguration : Prop
  magnetizationDynamics : Prop

def magneticAdmittedObject : MagneticMaterial := {
  carrier := Type
  crystalStructure := True
  spinConfiguration := True
  magnetizationDynamics := True
}

structure AdmissibleClass where
  object : MagneticMaterial
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  magneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def magneticWitnessClosed (O : MagneticMaterial) : Prop := O.magnetizationDynamics

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse