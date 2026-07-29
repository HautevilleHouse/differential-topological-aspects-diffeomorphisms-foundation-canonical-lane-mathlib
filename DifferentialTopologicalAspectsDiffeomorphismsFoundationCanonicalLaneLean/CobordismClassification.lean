import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure CobordismPackage {M : Type} [TopologicalSpace M]
    (Handle : HandleDecompositionPackage (Morse : MorseFunctionPackage M)) where
  cobordismType : String
  classificationResult : Prop
  equivalenceRelation : Prop

structure CobordismEvidence {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} {Handle : HandleDecompositionPackage Morse}
    (C : CobordismPackage Handle) where
  classificationResultClosed : C.classificationResult
  equivalenceRelationClosed : C.equivalenceRelation

def CobordismClosed {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} {Handle : HandleDecompositionPackage Morse}
    (C : CobordismPackage Handle) : Prop :=
  C.classificationResult ∧ C.equivalenceRelation

theorem cobordism_closed_from_evidence {M : Type} [TopologicalSpace M]
    {Morse : MorseFunctionPackage M} {Handle : HandleDecompositionPackage Morse}
    (C : CobordismPackage Handle) (E : CobordismEvidence C) : CobordismClosed C := by
  exact And.intro E.classificationResultClosed E.equivalenceRelationClosed

end HautevilleHouse
end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean