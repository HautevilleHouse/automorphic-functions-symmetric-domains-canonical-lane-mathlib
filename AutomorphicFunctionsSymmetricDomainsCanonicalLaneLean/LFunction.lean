import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure LFunctionPackage {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} (f : AutomorphicFormPackage D Γ) where
  lSeries : ℕ → ℂ
  functionalEquation : Prop
  analyticContinuation : Prop
  eulerProduct : Prop

structure LFunctionEvidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (L : LFunctionPackage f) where
  functionalEquationClosed : L.functionalEquation
  analyticContinuationClosed : L.analyticContinuation
  eulerProductClosed : L.eulerProduct

def LFunctionClosed {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (L : LFunctionPackage f) : Prop :=
  L.functionalEquation ∧ L.analyticContinuation ∧ L.eulerProduct

theorem l_function_closed_from_evidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (L : LFunctionPackage f) (E : LFunctionEvidence L) : LFunctionClosed L := by
  exact And.intro E.functionalEquationClosed
    (And.intro E.analyticContinuationClosed E.eulerProductClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse