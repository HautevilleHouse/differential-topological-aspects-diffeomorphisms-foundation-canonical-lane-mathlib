import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure CobordismTheoryPackage where
  manifold : Type u
  cobordismRelation : Prop
  sCobordismTheorem : Prop
  hCobordismTheorem : Prop

structure CobordismTheoryEvidence (C : CobordismTheoryPackage) where
  cobordismRelationClosed : C.cobordismRelation
  sCobordismTheoremClosed : C.sCobordismTheorem
  hCobordismTheoremClosed : C.hCobordismTheorem

def CobordismTheoryClosed (C : CobordismTheoryPackage) : Prop :=
  C.cobordismRelation ∧ C.sCobordismTheorem ∧ C.hCobordismTheorem

theorem cobordism_theory_closed_from_evidence
    (C : CobordismTheoryPackage)
    (E : CobordismTheoryEvidence C) :
    CobordismTheoryClosed C := by
  exact And.intro E.cobordismRelationClosed
    (And.intro E.sCobordismTheoremClosed E.hCobordismTheoremClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse