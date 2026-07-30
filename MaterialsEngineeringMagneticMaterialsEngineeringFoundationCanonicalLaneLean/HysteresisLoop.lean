import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure HysteresisLoopPackage where
  coercivity : Prop
  remanence : Prop
  saturationMagnetization : Prop
  loopArea : Prop
  domainWallPinning : Prop
  loopClosed : Prop

structure HysteresisLoopEvidence (H : HysteresisLoopPackage) where
  coercivityClosed : H.coercivity
  remanenceClosed : H.remanence
  saturationMagnetizationClosed : H.saturationMagnetization
  loopAreaClosed : H.loopArea
  domainWallPinningClosed : H.domainWallPinning
  loopClosedTerm : H.loopClosed

def HysteresisLoopClosed (H : HysteresisLoopPackage) : Prop :=
  H.coercivity ∧ H.remanence ∧ H.saturationMagnetization ∧ H.loopArea ∧ H.domainWallPinning ∧ H.loopClosed

theorem hysteresis_loop_closed_from_evidence
    (H : HysteresisLoopPackage) (E : HysteresisLoopEvidence H) :
    HysteresisLoopClosed H := by
  exact And.intro E.coercivityClosed
    (And.intro E.remanenceClosed
      (And.intro E.saturationMagnetizationClosed
        (And.intro E.loopAreaClosed
          (And.intro E.domainWallPinningClosed E.loopClosedTerm))))

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse