import canonicalLaneMathlib.AdmissibleClass

/-!
# Cobordism Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure CobordismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] where
  cobordismExists : Prop
  bordismClass : Prop
  hCobordismTheorem : Prop
  sCobordismTheorem : Prop
  obstructionGroupComputed : Prop

structure CobordismEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (C : CobordismPackage M N) where
  cobordismExistsClosed : C.cobordismExists
  bordismClassClosed : C.bordismClass
  hCobordismTheoremClosed : C.hCobordismTheorem
  sCobordismTheoremClosed : C.sCobordismTheorem
  obstructionGroupComputedClosed : C.obstructionGroupComputed

def CobordismClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (C : CobordismPackage M N) : Prop :=
  C.cobordismExists ∧ C.bordismClass ∧ C.hCobordismTheorem ∧ C.sCobordismTheorem ∧ C.obstructionGroupComputed

theorem cobordism_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N]
    (C : CobordismPackage M N) (E : CobordismEvidence C) : CobordismClosed C := by
  exact And.intro E.cobordismExistsClosed
    (And.intro E.bordismClassClosed
      (And.intro E.hCobordismTheoremClosed
        (And.intro E.sCobordismTheoremClosed E.obstructionGroupComputedClosed)))

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse