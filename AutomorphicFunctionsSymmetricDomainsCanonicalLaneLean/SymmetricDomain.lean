import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure SymmetricDomainPackage where
  domainType : Type u
  hermitianMetric : Type v
  holomorphicCurvatureBounded : Prop
  bergmanMetricDefined : Prop
  automorphismGroupTransitive : Prop
  rankDefined : Nat

structure SymmetricDomainEvidence (D : SymmetricDomainPackage) where
  holomorphicCurvatureBoundedClosed : D.holomorphicCurvatureBounded
  bergmanMetricDefinedClosed : D.bergmanMetricDefined
  automorphismGroupTransitiveClosed : D.automorphismGroupTransitive

def SymmetricDomainClosed (D : SymmetricDomainPackage) : Prop :=
  D.holomorphicCurvatureBounded ∧ D.bergmanMetricDefined ∧ D.automorphismGroupTransitive

theorem symmetric_domain_closed_from_evidence (D : SymmetricDomainPackage)
    (E : SymmetricDomainEvidence D) : SymmetricDomainClosed D := by
  exact And.intro E.holomorphicCurvatureBoundedClosed
    (And.intro E.bergmanMetricDefinedClosed E.automorphismGroupTransitiveClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse