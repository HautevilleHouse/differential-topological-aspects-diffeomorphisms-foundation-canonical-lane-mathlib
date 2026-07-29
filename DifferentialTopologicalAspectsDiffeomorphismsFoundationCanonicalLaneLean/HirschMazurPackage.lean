import canonicalLaneMathlib.AdmissibleClass

/-!
# Hirsch-Mazur Smoothing Theory Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure HirschMazurPackage (M : Type u) [TopologicalSpace M] [Manifold M] where
  smoothingExists : Prop
  obstructionGroup : Type v
  obstructionClass : Prop
  smoothingUnique : Prop
  haefligerTheorem : Prop

structure HirschMazurEvidence {M : Type u} [TopologicalSpace M] [Manifold M] (H : HirschMazurPackage M) where
  smoothingExistsClosed : H.smoothingExists
  obstructionClassClosed : H.obstructionClass
  smoothingUniqueClosed : H.smoothingUnique
  haefligerTheoremClosed : H.haefligerTheorem

def HirschMazurClosed {M : Type u} [TopologicalSpace M] [Manifold M] (H : HirschMazurPackage M) : Prop :=
  H.smoothingExists ∧ H.obstructionClass ∧ H.smoothingUnique ∧ H.haefligerTheorem

theorem hirsch_mazur_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [Manifold M]
    (H : HirschMazurPackage M) (E : HirschMazurEvidence H) :
    HirschMazurClosed H := by
  exact And.intro E.smoothingExistsClosed
    (And.intro E.obstructionClassClosed
      (And.intro E.smoothingUniqueClosed E.haefligerTheoremClosed))

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse