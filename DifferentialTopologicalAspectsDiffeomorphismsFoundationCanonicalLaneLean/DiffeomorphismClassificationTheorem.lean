import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean.DiffeomorphismInvarianceTheorem

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismClassificationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Set (Set manifold)
  classificationCriteria : Prop
  classificationResult : Prop
  classificationClosed : classificationResult

structure DiffeomorphismClassificationEvidence (C : DiffeomorphismClassificationPackage) where
  classificationResultClosed : C.classificationResult

def DiffeomorphismClassificationClosed (C : DiffeomorphismClassificationPackage) : Prop :=
  C.classificationResult

theorem diffeomorphism_classification_closed_from_evidence
    (C : DiffeomorphismClassificationPackage) (E : DiffeomorphismClassificationEvidence C) :
    DiffeomorphismClassificationClosed C := by
  exact E.classificationResultClosed

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse