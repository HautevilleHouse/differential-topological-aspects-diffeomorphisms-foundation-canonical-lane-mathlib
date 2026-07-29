import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismGroupPackage (M : Type) [TopologicalSpace M] [SmoothManifold M] where
  group : Set (M → M)
  compositionClosure : Prop
  inverseClosure : Prop
  identityIncluded : Prop
  smoothStructure : Prop

structure DiffeomorphismGroupEvidence (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (G : DiffeomorphismGroupPackage M) where
  compositionClosureClosed : G.compositionClosure
  inverseClosureClosed : G.inverseClosure
  identityIncludedClosed : G.identityIncluded
  smoothStructureClosed : G.smoothStructure

def DiffeomorphismGroupClosed (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (G : DiffeomorphismGroupPackage M) : Prop :=
  G.compositionClosure ∧ G.inverseClosure ∧ G.identityIncluded ∧ G.smoothStructure

theorem diffeomorphism_group_closed_from_evidence (M : Type) [TopologicalSpace M] [SmoothManifold M]
    (G : DiffeomorphismGroupPackage M) (E : DiffeomorphismGroupEvidence M G) :
    DiffeomorphismGroupClosed M G := by
  exact And.intro E.compositionClosureClosed
    (And.intro E.inverseClosureClosed
      (And.intro E.identityIncludedClosed E.smoothStructureClosed))

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean