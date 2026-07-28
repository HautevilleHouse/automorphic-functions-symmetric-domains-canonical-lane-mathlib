import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.SymmetricDomain

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure AutomorphicFormPackage {D : SymmetricDomainPackage} where
  weight : ℕ
  growthCondition : Prop
  fourierExpansionExists : Prop
  cuspCondition : Prop

def AutomorphicFormPackageGrowthCondition {D : SymmetricDomainPackage}
    (F : AutomorphicFormPackage D) : Prop := F.growthCondition

def AutomorphicFormPackageCuspCondition {D : SymmetricDomainPackage}
    (F : AutomorphicFormPackage D) : Prop := F.cuspCondition

structure AutomorphicFormEvidence {D : SymmetricDomainPackage}
    (F : AutomorphicFormPackage D) where
  growthConditionClosed : F.growthCondition
  fourierExpansionExistsClosed : F.fourierExpansionExists
  cuspConditionClosed : F.cuspCondition

def AutomorphicFormClosed {D : SymmetricDomainPackage}
    (F : AutomorphicFormPackage D) : Prop :=
  F.growthCondition ∧ F.fourierExpansionExists ∧ F.cuspCondition

theorem automorphic_form_closed_from_evidence {D : SymmetricDomainPackage}
    (F : AutomorphicFormPackage D) (E : AutomorphicFormEvidence F) :
    AutomorphicFormClosed F := by
  exact And.intro E.growthConditionClosed
    (And.intro E.fourierExpansionExistsClosed E.cuspConditionClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse