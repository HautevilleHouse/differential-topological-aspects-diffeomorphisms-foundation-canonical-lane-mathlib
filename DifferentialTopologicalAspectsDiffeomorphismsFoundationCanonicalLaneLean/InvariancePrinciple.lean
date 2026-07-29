import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure InvariancePrinciplePackage where
  manifold : Type u
  diffeomorphismInvariant : Prop
  homotopyInvariant : Prop
  cobordismInvariant : Prop

structure InvariancePrincipleEvidence (I : InvariancePrinciplePackage) where
  diffeomorphismInvariantClosed : I.diffeomorphismInvariant
  homotopyInvariantClosed : I.homotopyInvariant
  cobordismInvariantClosed : I.cobordismInvariant

def InvariancePrincipleClosed (I : InvariancePrinciplePackage) : Prop :=
  I.diffeomorphismInvariant ∧ I.homotopyInvariant ∧ I.cobordismInvariant

theorem invariance_principle_closed_from_evidence
    (I : InvariancePrinciplePackage)
    (E : InvariancePrincipleEvidence I) :
    InvariancePrincipleClosed I := by
  exact And.intro E.diffeomorphismInvariantClosed
    (And.intro E.homotopyInvariantClosed E.cobordismInvariantClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse