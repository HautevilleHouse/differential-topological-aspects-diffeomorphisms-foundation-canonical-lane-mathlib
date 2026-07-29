import canonicalLaneMathlib.AdmissibleClass

/-!
# Smale-Hirsch Immersion Theory Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure SmaleHirschPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] where
  jetBundle : Type v
  holonomicApproximation : Prop
  homotopyPrinciple : Prop
  microflexibility : Prop
  integrabilityCondition : Prop

structure SmaleHirschEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (S : SmaleHirschPackage M N) where
  holonomicApproximationClosed : S.holonomicApproximation
  homotopyPrincipleClosed : S.homotopyPrinciple
  microflexibilityClosed : S.microflexibility
  integrabilityConditionClosed : S.integrabilityCondition

def SmaleHirschClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (S : SmaleHirschPackage M N) : Prop :=
  S.holonomicApproximation ∧ S.homotopyPrinciple ∧ S.microflexibility ∧ S.integrabilityCondition

theorem smale_hirsch_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N]
    (S : SmaleHirschPackage M N) (E : SmaleHirschEvidence S) : SmaleHirschClosed S := by
  exact And.intro E.holonomicApproximationClosed
    (And.intro E.homotopyPrincipleClosed
      (And.intro E.microflexibilityClosed E.integrabilityConditionClosed))

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse