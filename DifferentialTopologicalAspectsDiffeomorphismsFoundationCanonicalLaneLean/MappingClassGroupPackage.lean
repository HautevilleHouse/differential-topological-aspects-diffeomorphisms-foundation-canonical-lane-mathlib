import canonicalLaneMathlib.AdmissibleClass

/-!
# Mapping Class Group Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundation

structure MappingClassGroupPackage (M : Type u) [TopologicalSpace M] [Manifold M] where
  mappingClassGroup : Type v
  nielsenThurstonClassification : Prop
  pseudoAnosovComponents : Prop
  reducibleComponents : Prop
  finiteOrderComponents : Prop

structure MappingClassGroupEvidence {M : Type u} [TopologicalSpace M] [Manifold M] (G : MappingClassGroupPackage M) where
  nielsenThurstonClassificationClosed : G.nielsenThurstonClassification
  pseudoAnosovComponentsClosed : G.pseudoAnosovComponents
  reducibleComponentsClosed : G.reducibleComponents
  finiteOrderComponentsClosed : G.finiteOrderComponents

def MappingClassGroupClosed {M : Type u} [TopologicalSpace M] [Manifold M] (G : MappingClassGroupPackage M) : Prop :=
  G.nielsenThurstonClassification ∧ G.pseudoAnosovComponents ∧ G.reducibleComponents ∧ G.finiteOrderComponents

theorem mapping_class_group_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [Manifold M]
    (G : MappingClassGroupPackage M) (E : MappingClassGroupEvidence G) :
    MappingClassGroupClosed G := by
  exact And.intro E.nielsenThurstonClassificationClosed
    (And.intro E.pseudoAnosovComponentsClosed
      (And.intro E.reducibleComponentsClosed E.finiteOrderComponentsClosed))

end DifferentialTopologicalAspectsDiffeomorphismsFoundation
end HautevilleHouse