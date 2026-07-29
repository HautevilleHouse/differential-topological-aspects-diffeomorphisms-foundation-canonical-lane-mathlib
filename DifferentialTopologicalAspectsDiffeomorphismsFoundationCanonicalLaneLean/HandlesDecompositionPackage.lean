import canonicalLaneMathlib.AdmissibleClass

/-!
# Handles Decomposition Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure HandlesDecompositionPackage (M : Type u) [TopologicalSpace M] [Manifold M] where
  handleBody : Type v
  attachingSpheres : Type w
  handleSlides : Prop
  handleCancellation : Prop
  decompositionExistential : Prop

structure HandlesDecompositionEvidence {M : Type u} [TopologicalSpace M] [Manifold M] (H : HandlesDecompositionPackage M) where
  handleSlidesClosed : H.handleSlides
  handleCancellationClosed : H.handleCancellation
  decompositionExistentialClosed : H.decompositionExistential

def HandlesDecompositionClosed {M : Type u} [TopologicalSpace M] [Manifold M] (H : HandlesDecompositionPackage M) : Prop :=
  H.handleSlides ∧ H.handleCancellation ∧ H.decompositionExistential

theorem handles_decomposition_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [Manifold M]
    (H : HandlesDecompositionPackage M) (E : HandlesDecompositionEvidence H) :
    HandlesDecompositionClosed H := by
  exact And.intro E.handleSlidesClosed
    (And.intro E.handleCancellationClosed E.decompositionExistentialClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse