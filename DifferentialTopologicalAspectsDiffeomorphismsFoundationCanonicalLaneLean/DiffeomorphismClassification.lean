import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  diffeomorphismExists : Prop
  classificationTheorem : Prop
  obstructionComplete : Prop

structure DiffeomorphismClassificationEvidence (D : DiffeomorphismClassificationPackage) where
  diffeomorphismExistsClosed : D.diffeomorphismExists
  classificationTheoremClosed : D.classificationTheorem
  obstructionCompleteClosed : D.obstructionComplete

def DiffeomorphismClassificationClosed (D : DiffeomorphismClassificationPackage) : Prop :=
  D.diffeomorphismExists ∧ D.classificationTheorem ∧ D.obstructionComplete

theorem diffeomorphism_classification_closed_from_evidence
    (D : DiffeomorphismClassificationPackage)
    (E : DiffeomorphismClassificationEvidence D) :
    DiffeomorphismClassificationClosed D := by
  exact And.intro E.diffeomorphismExistsClosed
    (And.intro E.classificationTheoremClosed E.obstructionCompleteClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse