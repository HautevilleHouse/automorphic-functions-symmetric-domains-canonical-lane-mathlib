import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.SymmetricDomain

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure DiscreteSubgroupPackage {D : SymmetricDomainPackage} where
  group : Type u
  actionOnDomain : group → D.domainType → D.domainType
  properlyDiscontinuous : Prop
  finiteCovolume : Prop
  torsionFree : Prop

structure DiscreteSubgroupEvidence {D : SymmetricDomainPackage}
    (Γ : DiscreteSubgroupPackage D) where
  properlyDiscontinuousClosed : Γ.properlyDiscontinuous
  finiteCovolumeClosed : Γ.finiteCovolume
  torsionFreeClosed : Γ.torsionFree

def DiscreteSubgroupClosed {D : SymmetricDomainPackage}
    (Γ : DiscreteSubgroupPackage D) : Prop :=
  Γ.properlyDiscontinuous ∧ Γ.finiteCovolume ∧ Γ.torsionFree

theorem discrete_subgroup_closed_from_evidence {D : SymmetricDomainPackage}
    (Γ : DiscreteSubgroupPackage D) (E : DiscreteSubgroupEvidence Γ) :
    DiscreteSubgroupClosed Γ := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.finiteCovolumeClosed E.torsionFreeClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse