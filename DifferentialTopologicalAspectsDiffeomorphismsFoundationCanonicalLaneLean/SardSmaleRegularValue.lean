import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure SardSmaleRegularValuePackage where
  banachManifold : Type u
  fredholmMap : Type v
  regularValueSet : Prop
  parametricTransversality : Prop
  perturbationClosed : Prop

structure SardSmaleRegularValueEvidence (S : SardSmaleRegularValuePackage) where
  regularValueSetClosed : S.regularValueSet
  parametricTransversalityClosed : S.parametricTransversality
  perturbationClosedClosed : S.perturbationClosed

def SardSmaleRegularValueClosed (S : SardSmaleRegularValuePackage) : Prop :=
  S.regularValueSet ∧ S.parametricTransversality ∧ S.perturbationClosed

theorem sard_smale_regular_value_closed_from_evidence
    (S : SardSmaleRegularValuePackage) (E : SardSmaleRegularValueEvidence S) :
    SardSmaleRegularValueClosed S := by
  exact And.intro E.regularValueSetClosed
    (And.intro E.parametricTransversalityClosed E.perturbationClosedClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
