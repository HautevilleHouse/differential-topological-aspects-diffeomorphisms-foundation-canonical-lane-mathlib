import canonicalLaneMathlib.AdmissibleClass
import DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DifferentialTopologicalObjects
import DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.ClassificationPackage

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure InvariancePrinciplePackage where
  invariantClass : Set String
  preservedUnder : (s : String) → Prop
  invarianceProof : (s : String) → Prop
  invarianceClosed : ∀ s ∈ invariantClass, preservedUnder s ∧ invarianceProof s

def InvarianceClosed (I : InvariancePrinciplePackage) : Prop :=
  I.invarianceClosed

theorem invariance_closed (I : InvariancePrinciplePackage) : InvarianceClosed I :=
  I.invarianceClosed

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
