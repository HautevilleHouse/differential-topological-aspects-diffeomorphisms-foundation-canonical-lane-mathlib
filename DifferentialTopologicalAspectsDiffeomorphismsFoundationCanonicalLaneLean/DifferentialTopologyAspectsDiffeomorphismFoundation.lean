import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismTopologicalAspect where
  underlyingManifold : Type u
  topology : TopologicalSpace underlyingManifold
  smoothStructure : Set (Set underlyingManifold) -- charts
  diffeomorphismGroup : Type v
  groupOperation : diffeomorphismGroup → diffeomorphismGroup → diffeomorphismGroup
  identityElement : diffeomorphismGroup
  inverseElement : diffeomorphismGroup → diffeomorphismGroup
  actionOnManifold : diffeomorphismGroup → underlyingManifold → underlyingManifold
  smoothAction : Prop
  closedUnderComposition : Prop
  closedUnderInversion : Prop

structure DiffeomorphismAdmissibleObject where
  aspect : DiffeomorphismTopologicalAspect
  compact : Prop
  orientable : Prop
  admitsCOStructure : Prop
  conclusion : admitsCOStructure

def diffeomorphismWitnessClosed (O : DiffeomorphismAdmissibleObject) : Prop :=
  O.admitsCOStructure

end DifferentialTopologicalAspectsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse