import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismBoundaryPackage (M : Type) [TopologicalSpace M] [SmoothManifold M] where
  boundary : Set M
  interior : Set M
  collarNeighborhood : Prop
  boundaryClassification : Prop

structure DiffeomorphismBoundaryEvidence (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (B : DiffeomorphismBoundaryPackage M) where
  collarNeighborhoodClosed : B.collarNeighborhood
  boundaryClassificationClosed : B.boundaryClassification

def DiffeomorphismBoundaryClosed (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (B : DiffeomorphismBoundaryPackage M) : Prop :=
  B.collarNeighborhood ∧ B.boundaryClassification

theorem diffeomorphism_boundary_closed_from_evidence (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (B : DiffeomorphismBoundaryPackage M) (E : DiffeomorphismBoundaryEvidence M B) :
    DiffeomorphismBoundaryClosed M B := by
  exact And.intro E.collarNeighborhoodClosed E.boundaryClassificationClosed

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean