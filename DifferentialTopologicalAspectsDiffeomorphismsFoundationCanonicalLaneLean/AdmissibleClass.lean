import DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DiffeomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse