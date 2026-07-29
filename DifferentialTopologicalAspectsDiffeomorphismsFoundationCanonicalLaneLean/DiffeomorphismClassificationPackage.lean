import canonicalLaneMathlib.AdmissibleClass

/-!
# Diffeomorphism Classification Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure DiffeomorphismClassificationPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] where
  diffeomorphismExists : Prop
  obstructionClass : Prop
  higherObstructionVanishes : Prop
  structureGroupReduced : Prop
  classificationComplete : Prop

structure DiffeomorphismClassificationEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (C : DiffeomorphismClassificationPackage M N) where
  diffeomorphismExistsClosed : C.diffeomorphismExists
  obstructionClassClosed : C.obstructionClass
  higherObstructionVanishesClosed : C.higherObstructionVanishes
  structureGroupReducedClosed : C.structureGroupReduced
  classificationCompleteClosed : C.classificationComplete

def DiffeomorphismClassificationClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (C : DiffeomorphismClassificationPackage M N) : Prop :=
  C.diffeomorphismExists ∧ C.obstructionClass ∧ C.higherObstructionVanishes ∧ C.structureGroupReduced ∧ C.classificationComplete

theorem diffeomorphism_classification_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N]
    (C : DiffeomorphismClassificationPackage M N) (E : DiffeomorphismClassificationEvidence C) :
    DiffeomorphismClassificationClosed C := by
  exact And.intro E.diffeomorphismExistsClosed
    (And.intro E.obstructionClassClosed
      (And.intro E.higherObstructionVanishesClosed
        (And.intro E.structureGroupReducedClosed E.classificationCompleteClosed)))

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse