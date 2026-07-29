import canonicalLaneMathlib.AdmissibleClass
import DifferentialTopologicalAspectsDiffeomorphismsFoundation.BridgeLemmas
import DifferentialTopologicalAspectsDiffeomorphismsFoundation.GateLemmas

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

def ConstrainedDiffeomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffeomorphism_endgame (A : AdmissibleClass) :
    ConstrainedDiffeomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse