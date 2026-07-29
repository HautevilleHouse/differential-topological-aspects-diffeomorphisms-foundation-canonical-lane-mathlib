import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure MorseTheoryPackage where
  manifold : Type u
  morseFunctionExists : Prop
  handleDecomposition : Prop
  morseHomology : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  morseFunctionExistsClosed : M.morseFunctionExists
  handleDecompositionClosed : M.handleDecomposition
  morseHomologyClosed : M.morseHomology

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.morseFunctionExists ∧ M.handleDecomposition ∧ M.morseHomology

theorem morse_theory_closed_from_evidence
    (M : MorseTheoryPackage)
    (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.morseFunctionExistsClosed
    (And.intro E.handleDecompositionClosed E.morseHomologyClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse