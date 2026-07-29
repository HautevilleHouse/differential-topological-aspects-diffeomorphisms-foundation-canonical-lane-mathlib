import canonicalLaneMathlib.AdmissibleClass

/-!
# Morse Theory Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure MorseTheoryPackage (M : Type u) [TopologicalSpace M] [Manifold M] where
  morseFunction : Type v
  criticalPoints : Type w
  morseHomology : Type x
  morseInequalities : Prop
  handlebodyDecomposition : Prop

structure MorseTheoryEvidence {M : Type u} [TopologicalSpace M] [Manifold M] (Morse : MorseTheoryPackage M) where
  morseInequalitiesClosed : Morse.morseInequalities
  handlebodyDecompositionClosed : Morse.handlebodyDecomposition

def MorseTheoryClosed {M : Type u} [TopologicalSpace M] [Manifold M] (Morse : MorseTheoryPackage M) : Prop :=
  Morse.morseInequalities ∧ Morse.handlebodyDecomposition

theorem morse_theory_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [Manifold M]
    (Morse : MorseTheoryPackage M) (E : MorseTheoryEvidence Morse) :
    MorseTheoryClosed Morse := by
  exact And.intro E.morseInequalitiesClosed E.handlebodyDecompositionClosed

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse