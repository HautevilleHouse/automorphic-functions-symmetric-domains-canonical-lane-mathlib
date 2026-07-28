import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.SymmetricDomain
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.DiscreteSubgroup

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure SpectralTheoryPackage {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} where
  laplaceOperator : Type u
  discreteSpectrum : Prop
  weylLaw : Prop
  temperedness : Prop

structure SpectralTheoryEvidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} (S : SpectralTheoryPackage D Γ) where
  discreteSpectrumClosed : S.discreteSpectrum
  weylLawClosed : S.weylLaw
  temperednessClosed : S.temperedness

def SpectralTheoryClosed {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} (S : SpectralTheoryPackage D Γ) : Prop :=
  S.discreteSpectrum ∧ S.weylLaw ∧ S.temperedness

theorem spectral_theory_closed_from_evidence {D : SymmetricDomainPackage}
    {Γ : DiscreteSubgroupPackage D} (S : SpectralTheoryPackage D Γ)
    (E : SpectralTheoryEvidence S) : SpectralTheoryClosed S := by
  exact And.intro E.discreteSpectrumClosed
    (And.intro E.weylLawClosed E.temperednessClosed)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse