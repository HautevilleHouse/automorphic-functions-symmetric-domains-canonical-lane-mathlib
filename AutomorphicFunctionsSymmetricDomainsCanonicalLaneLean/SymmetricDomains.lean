import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure HermitianSymmetricDomainPackage where
  manifold : Type u
  complexStructure : Prop
  hermitianMetric : Prop
  globalSymmetries : Prop
  boundedRealization : Prop
  rank : ℕ

structure SymmetricDomainEvidence (P : HermitianSymmetricDomainPackage) where
  complexStructureClosed : P.complexStructure
  hermitianMetricClosed : P.hermitianMetric
  globalSymmetriesClosed : P.globalSymmetries
  boundedRealizationClosed : P.boundedRealization

def HermitianSymmetricDomainClosed (P : HermitianSymmetricDomainPackage) : Prop :=
  P.complexStructure ∧ P.hermitianMetric ∧ P.globalSymmetries ∧ P.boundedRealization

theorem hermitian_symmetric_domain_closed_from_evidence (P : HermitianSymmetricDomainPackage)
    (E : SymmetricDomainEvidence P) : HermitianSymmetricDomainClosed P := by
  exact And.intro E.complexStructureClosed
    (And.intro E.hermitianMetricClosed
      (And.intro E.globalSymmetriesClosed E.boundedRealizationClosed))

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse
