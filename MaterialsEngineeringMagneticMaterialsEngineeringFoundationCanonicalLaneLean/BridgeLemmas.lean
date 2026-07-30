import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  magneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.magnetizationDynamics

end MaterialsEngineeringMagneticMaterialsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse