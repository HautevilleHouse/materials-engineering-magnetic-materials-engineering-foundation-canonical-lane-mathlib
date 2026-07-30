import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.MicromagneticEnergy

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

structure NoncollapsingPackage {E : MicromagneticEnergyPackage} (Epkg : SpinWaveExistencePackage E) where
  exchangeDomination : Prop
  anisotropyLimit : Prop
  strayFieldBounded : Prop

structure NoncollapsingEvidence {E : MicromagneticEnergyPackage} {S : SpinWaveExistencePackage E} (N : NoncollapsingPackage S) where
  exchangeDominationClosed : N.exchangeDomination
  anisotropyLimitClosed : N.anisotropyLimit
  strayFieldBoundedClosed : N.strayFieldBounded

def NoncollapsingClosed {E : MicromagneticEnergyPackage} {S : SpinWaveExistencePackage E} (N : NoncollapsingPackage S) : Prop := N.exchangeDomination ∧ N.anisotropyLimit ∧ N.strayFieldBounded

theorem noncollapsing_closed_from_evidence {E : MicromagneticEnergyPackage} {S : SpinWaveExistencePackage E} (N : NoncollapsingPackage S) (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.exchangeDominationClosed (And.intro E.anisotropyLimitClosed E.strayFieldBoundedClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse