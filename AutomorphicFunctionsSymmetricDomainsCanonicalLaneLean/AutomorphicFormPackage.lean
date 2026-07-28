import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure AutomorphicFormPackage where
  formType : Type u
  cuspCondition : Prop
  holomorphy : Prop
  LFunctionAssociated : Type v
  functionalEquation : Prop

structure AutomorphicFormEvidence (F : AutomorphicFormPackage) where
  cuspConditionClosed : F.cuspCondition
  holomorphyClosed : F.holomorphy
  functionalEquationClosed : F.functionalEquation

def AutomorphicFormClosed (F : AutomorphicFormPackage) : Prop :=
  F.cuspCondition ∧ F.holomorphy ∧ F.functionalEquation

theorem automorphic_form_closed_from_evidence (F : AutomorphicFormPackage) (E : AutomorphicFormEvidence F) :
    AutomorphicFormClosed F := by
  exact And.intro E.cuspConditionClosed (And.intro E.holomorphyClosed E.functionalEquationClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse