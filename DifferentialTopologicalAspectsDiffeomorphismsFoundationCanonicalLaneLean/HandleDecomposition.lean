import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure HandleDecompositionPackage {M : Type} [TopologicalSpace M]
    (Morse : MorseFunctionPackage M) where
  handleSlides : List (ℕ × ℕ)
  decompositionValid : Prop
  diffeomorphismReconstruction : Prop

structure HandleDecompositionEvidence {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} (H : HandleDecompositionPackage Morse) where
  decompositionValidClosed : H.decompositionValid
  diffeomorphismReconstructionClosed : H.diffeomorphismReconstruction

def HandleDecompositionClosed {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} (H : HandleDecompositionPackage Morse) : Prop :=
  H.decompositionValid ∧ H.diffeomorphismReconstruction

theorem handle_decomposition_closed_from_evidence {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} (H : HandleDecompositionPackage Morse)
    (E : HandleDecompositionEvidence H) : HandleDecompositionClosed H := by
  exact And.intro E.decompositionValidClosed E.diffeomorphismReconstructionClosed

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean