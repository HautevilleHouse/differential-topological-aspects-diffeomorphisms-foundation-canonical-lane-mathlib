import canonicalLaneMathlib.AdmissibleClass
import DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DifferentialTopologicalObjects

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

def bridgeClosed (A : DiffeoAdmittedObject) : Prop :=
  DiffeomorphismWitnessClosed A.obj

theorem bridge_from_admissible_class (A : DiffeoAdmittedObject) :
    bridgeClosed A := by
  exact A.obj.conclusion

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
