import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure HysteresisModelPackage where
  coercivity : Prop
  remanence : Prop
  saturationMagnetization : Prop
  hysteresisLoop : Prop
  stonerWohlfarthModel : Prop

structure HysteresisModelEvidence (H : HysteresisModelPackage) where
  coercivityClosed : H.coercivity
  remanenceClosed : H.remanence
  saturationMagnetizationClosed : H.saturationMagnetization
  hysteresisLoopClosed : H.hysteresisLoop
  stonerWohlfarthModelClosed : H.stonerWohlfarthModel

def HysteresisModelClosed (H : HysteresisModelPackage) : Prop :=
  H.coercivity ∧ H.remanence ∧ H.saturationMagnetization ∧ H.hysteresisLoop ∧ H.stonerWohlfarthModel

theorem hysteresis_model_closed_from_evidence (H : HysteresisModelPackage)
    (E : HysteresisModelEvidence H) : HysteresisModelClosed H := by
  exact And.intro E.coercivityClosed
    (And.intro E.remanenceClosed
      (And.intro E.saturationMagnetizationClosed
        (And.intro E.hysteresisLoopClosed E.stonerWohlfarthModelClosed)))

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse