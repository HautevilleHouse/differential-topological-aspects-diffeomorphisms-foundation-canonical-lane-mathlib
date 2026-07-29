import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DiffeomorphismGateLemmas

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

def ConstrainedDiffeomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffeomorphism_endgame (A : AdmissibleClass) :
    ConstrainedDiffeomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse