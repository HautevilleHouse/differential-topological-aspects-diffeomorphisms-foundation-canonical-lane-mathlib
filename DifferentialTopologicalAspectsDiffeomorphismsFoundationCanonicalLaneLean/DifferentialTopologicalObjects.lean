import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure ManifoldConfig where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : Nat
  hausdorffSecondCountable : Prop

structure DiffeomorphismObject where
  source : ManifoldConfig
  target : ManifoldConfig
  homeo : source.carrier ≃t target.carrier
  smoothness : Prop
  smoothInverse : Prop
  conclusion : smoothness ∧ smoothInverse

structure DiffeoAdmittedObject where
  obj : DiffeomorphismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DiffeomorphismWitnessClosed (O : DiffeomorphismObject) : Prop :=
  O.conclusion

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
