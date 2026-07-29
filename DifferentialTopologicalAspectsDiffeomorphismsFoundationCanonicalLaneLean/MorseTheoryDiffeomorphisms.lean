import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure MorseFunctionPackage (M : Type) [TopologicalSpace M] where
  function : M → ℝ
  nondegenerateCriticalPoints : Prop
  morseLemmaApplicable : Prop

structure MorseTheoryEvidence {M : Type} [TopologicalSpace M] (P : MorseFunctionPackage M) where
  functionClosed : P.function = P.function
  nondegenerateCriticalPointsClosed : P.nondegenerateCriticalPoints
  morseLemmaApplicableClosed : P.morseLemmaApplicable

def MorseTheoryClosed {M : Type} [TopologicalSpace M] (P : MorseFunctionPackage M) : Prop :=
  P.nondegenerateCriticalPoints ∧ P.morseLemmaApplicable

theorem morse_theory_closed_from_evidence {M : Type} [TopologicalSpace M]
    (P : MorseFunctionPackage M) (E : MorseTheoryEvidence P) : MorseTheoryClosed P := by
  exact And.intro E.nondegenerateCriticalPointsClosed E.morseLemmaApplicableClosed

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean