import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.SymmetricDomains

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure AutomorphicFunctionPackage (D : HermitianSymmetricDomainPackage) where
  discreteSubgroup : Type u
  invarianceCondition : Prop
  holomorphy : Prop
  moderateGrowth : Prop
  cuspConditions : Prop

structure AutomorphicFunctionEvidence {D : HermitianSymmetricDomainPackage}
    (F : AutomorphicFunctionPackage D) where
  invarianceConditionClosed : F.invarianceCondition
  holomorphyClosed : F.holomorphy
  moderateGrowthClosed : F.moderateGrowth
  cuspConditionsClosed : F.cuspConditions

def AutomorphicFunctionClosed {D : HermitianSymmetricDomainPackage}
    (F : AutomorphicFunctionPackage D) : Prop :=
  F.invarianceCondition ∧ F.holomorphy ∧ F.moderateGrowth ∧ F.cuspConditions

theorem automorphic_function_closed_from_evidence
    {D : HermitianSymmetricDomainPackage} (F : AutomorphicFunctionPackage D)
    (E : AutomorphicFunctionEvidence F) : AutomorphicFunctionClosed F := by
  exact And.intro E.invarianceConditionClosed
    (And.intro E.holomorphyClosed
      (And.intro E.moderateGrowthClosed E.cuspConditionsClosed))

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse
