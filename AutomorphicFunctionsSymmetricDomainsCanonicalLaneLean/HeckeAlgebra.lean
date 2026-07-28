import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure HeckeAlgebra (G : Type u) [Group G] where
  group : G
  doubleCosets : Type
  convolutionProduct : Type
  algebraStructure : Prop
  actionOnForms : Prop
  commutative : Prop

structure HeckeAlgebraEvidence (H : HeckeAlgebra) where
  algebraStructureClosed : H.algebraStructure
  actionOnFormsClosed : H.actionOnForms
  commutativeClosed : H.commutative

def HeckeAlgebraClosed (H : HeckeAlgebra) : Prop :=
  H.algebraStructure ∧ H.actionOnForms ∧ H.commutative

theorem hecke_algebra_closed_from_evidence (H : HeckeAlgebra) (E : HeckeAlgebraEvidence H) : HeckeAlgebraClosed H := by
  exact And.intro E.algebraStructureClosed
    (And.intro E.actionOnFormsClosed E.commutativeClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse