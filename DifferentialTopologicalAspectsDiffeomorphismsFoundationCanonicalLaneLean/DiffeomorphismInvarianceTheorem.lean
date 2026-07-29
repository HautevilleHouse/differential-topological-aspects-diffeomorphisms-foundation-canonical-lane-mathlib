import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DifferentialTopologyAspectsDiffeomorphismFoundation

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismInvariancePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Set (Set manifold)
  invarianceProperty : Prop
  invarianceUnderDiffeomorphism : Prop
  invarianceClosed : invarianceUnderDiffeomorphism

structure DiffeomorphismInvarianceEvidence (I : DiffeomorphismInvariancePackage) where
  invarianceUnderDiffeomorphismClosed : I.invarianceUnderDiffeomorphism

def DiffeomorphismInvarianceClosed (I : DiffeomorphismInvariancePackage) : Prop :=
  I.invarianceUnderDiffeomorphism

theorem diffeomorphism_invariance_closed_from_evidence
    (I : DiffeomorphismInvariancePackage) (E : DiffeomorphismInvarianceEvidence I) :
    DiffeomorphismInvarianceClosed I := by
  exact E.invarianceUnderDiffeomorphismClosed

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse