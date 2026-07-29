import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure TransversalityDeformationPackage where
  smoothMorseFunction : Prop
  handleAttachmentData : Prop
  gradientFlowTransverse : Prop
  deformationRetract : Prop

structure TransversalityDeformationEvidence (T : TransversalityDeformationPackage) where
  smoothMorseFunctionClosed : T.smoothMorseFunction
  handleAttachmentDataClosed : T.handleAttachmentData
  gradientFlowTransverseClosed : T.gradientFlowTransverse
  deformationRetractClosed : T.deformationRetract

def TransversalityDeformationClosed (T : TransversalityDeformationPackage) : Prop :=
  T.smoothMorseFunction ∧ T.handleAttachmentData ∧ T.gradientFlowTransverse ∧ T.deformationRetract

theorem transversality_deformation_closed_from_evidence
    (T : TransversalityDeformationPackage) (E : TransversalityDeformationEvidence T) :
    TransversalityDeformationClosed T := by
  exact And.intro E.smoothMorseFunctionClosed
    (And.intro E.handleAttachmentDataClosed
      (And.intro E.gradientFlowTransverseClosed E.deformationRetractClosed))

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
