import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DualityTheoremPackage where
  manifold : Type u
  poincareDuality : Prop
  lefschetzDuality : Prop
  serreDuality : Prop

structure DualityTheoremEvidence (D : DualityTheoremPackage) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  serreDualityClosed : D.serreDuality

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.serreDuality

theorem duality_theorem_closed_from_evidence
    (D : DualityTheoremPackage)
    (E : DualityTheoremEvidence D) :
    DualityTheoremClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed E.serreDualityClosed)

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse