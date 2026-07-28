import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure SymmetricDomainPackage where
  domainType : Type u
  groupAction : Type v
  hermitianMetric : Type w
  rankFinite : Prop
  cuspidalDecomposition : Prop
  automorphicProperty : Prop

structure SymmetricDomainEvidence (S : SymmetricDomainPackage) where
  rankFiniteClosed : S.rankFinite
  cuspidalDecompositionClosed : S.cuspidalDecomposition
  automorphicPropertyClosed : S.automorphicProperty

def SymmetricDomainClosed (S : SymmetricDomainPackage) : Prop :=
  S.rankFinite ∧ S.cuspidalDecomposition ∧ S.automorphicProperty

theorem symmetric_domain_closed_from_evidence (S : SymmetricDomainPackage) (E : SymmetricDomainEvidence S) :
    SymmetricDomainClosed S := by
  exact And.intro E.rankFiniteClosed (And.intro E.cuspidalDecompositionClosed E.automorphicPropertyClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse