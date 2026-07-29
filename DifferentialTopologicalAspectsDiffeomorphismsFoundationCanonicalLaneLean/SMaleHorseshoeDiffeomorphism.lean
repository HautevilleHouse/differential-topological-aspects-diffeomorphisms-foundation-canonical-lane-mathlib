import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure HorseshoeDiffeomorphismPackage where
  baseManifold : Type
  topology : TopologicalSpace baseManifold
  diffeomorphism : baseManifold → baseManifold
  hyperbolicStructure : Prop
  invariantSet : Set baseManifold
  topologicalConjugacy : Prop

structure HorseshoeDiffeomorphismEvidence (H : HorseshoeDiffeomorphismPackage) where
  hyperbolicStructureClosed : H.hyperbolicStructure
  topologicalConjugacyClosed : H.topologicalConjugacy

def HorseshoeDiffeomorphismClosed (H : HorseshoeDiffeomorphismPackage) : Prop :=
  H.hyperbolicStructure ∧ H.topologicalConjugacy

theorem horseshoe_diffeomorphism_closed_from_evidence (H : HorseshoeDiffeomorphismPackage)
    (E : HorseshoeDiffeomorphismEvidence H) : HorseshoeDiffeomorphismClosed H := by
  exact And.intro E.hyperbolicStructureClosed E.topologicalConjugacyClosed

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean