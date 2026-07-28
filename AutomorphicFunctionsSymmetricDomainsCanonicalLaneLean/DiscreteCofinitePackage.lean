import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure DiscreteCofinitePackage where
  latticeExists : Prop
  cofiniteVolume : Prop
  discreteSubgroup : Prop
  arithmeticity : Prop

structure DiscreteCofiniteEvidence (D : DiscreteCofinitePackage) where
  latticeExistsClosed : D.latticeExists
  cofiniteVolumeClosed : D.cofiniteVolume
  discreteSubgroupClosed : D.discreteSubgroup
  arithmeticityClosed : D.arithmeticity

def DiscreteCofiniteClosed (D : DiscreteCofinitePackage) : Prop :=
  D.latticeExists ∧ D.cofiniteVolume ∧ D.discreteSubgroup ∧ D.arithmeticity

theorem discrete_cofinite_closed_from_evidence
    (D : DiscreteCofinitePackage) (E : DiscreteCofiniteEvidence D) :
    DiscreteCofiniteClosed D := by
  exact And.intro E.latticeExistsClosed
    (And.intro E.cofiniteVolumeClosed
      (And.intro E.discreteSubgroupClosed E.arithmeticityClosed))

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse