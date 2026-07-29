import canonicalLaneMathlib.AdmissibleClass
import DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DifferentialTopologicalObjects

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

def gateClosed (A : DiffeoAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DiffeoAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
