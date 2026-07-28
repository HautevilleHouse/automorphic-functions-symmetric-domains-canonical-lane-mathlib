import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure ShimuraVariety (G : Type u) (D : SymmetricDomain) [Group G] where
  groupG : G
  domain : D
  shimuraData : Type
  isAlgebraic : Prop
  hasCanonicalModel : Prop
  reciprocityLaw : Prop

structure ShimuraVarietyEvidence (S : ShimuraVariety) where
  isAlgebraicClosed : S.isAlgebraic
  hasCanonicalModelClosed : S.hasCanonicalModel
  reciprocityLawClosed : S.reciprocityLaw

def ShimuraVarietyClosed (S : ShimuraVariety) : Prop :=
  S.isAlgebraic ∧ S.hasCanonicalModel ∧ S.reciprocityLaw

theorem shimura_variety_closed_from_evidence (S : ShimuraVariety) (E : ShimuraVarietyEvidence S) : ShimuraVarietyClosed S := by
  exact And.intro E.isAlgebraicClosed
    (And.intro E.hasCanonicalModelClosed E.reciprocityLawClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse