import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure SymmetricDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  hermitianMetric : RiemannianMetric carrier
  isHermitianSymmetric : Prop

structure LatticeSubgroup (G : Type u) [TopologicalSpace G] [Group G] where
  subgroup : Set G
  discrete : Prop
  finiteCovolume : Prop

structure AutomorphicAdmittedObject where
  domain : SymmetricDomain
  lattice : LatticeSubdomain (automorphismGroup domain)
  automorphicFormsVectorSpace : Prop
  finiteDimensional : Prop
  conclusion : finiteDimensional

def AutomorphicWitnessClosed (O : AutomorphicAdmittedObject) : Prop :=
  O.finiteDimensional

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse