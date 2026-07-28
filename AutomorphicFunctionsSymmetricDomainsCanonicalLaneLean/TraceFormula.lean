import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.AutomorphicForm
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.LFunction

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure TraceFormulaPackage {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} (f : AutomorphicFormPackage D Γ) where
  spectralSide : Prop
  geometricSide : Prop
  equality : Prop

structure TraceFormulaEvidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (T : TraceFormulaPackage f) where
  spectralSideClosed : T.spectralSide
  geometricSideClosed : T.geometricSide
  equalityClosed : T.equality

def TraceFormulaClosed {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (T : TraceFormulaPackage f) : Prop :=
  T.spectralSide ∧ T.geometricSide ∧ T.equality

theorem trace_formula_closed_from_evidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} {f : AutomorphicFormPackage D Γ}
    (T : TraceFormulaPackage f) (E : TraceFormulaEvidence T) :
    TraceFormulaClosed T := by
  exact And.intro E.spectralSideClosed
    (And.intro E.geometricSideClosed E.equalityClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse