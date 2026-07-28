import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean.DiscreteCofinitePackage

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure AutomorphicCertificate (D : SymmetricDomainObject) where
  automorphicFormsDefined : Prop
  discreteSubgroupFixed : Prop
  cofiniteVolumeVerified : Prop
  finiteDimensionalProved : Prop
  automorphicFormsDefinedClosed : automorphicFormsDefined
  discreteSubgroupFixedClosed : discreteSubgroupFixed
  cofiniteVolumeVerifiedClosed : cofiniteVolumeVerified
  finiteDimensionalProvedClosed : finiteDimensionalProved
  evidence : DiscreteCofiniteEvidence (D.discreteCofinitePackage)

def AutomorphicCertificateClosed {D : SymmetricDomainObject} (C : AutomorphicCertificate D) : Prop :=
  C.automorphicFormsDefined ∧ C.discreteSubgroupFixed ∧ C.cofiniteVolumeVerified ∧ C.finiteDimensionalProved ∧ DiscreteCofiniteClosed D.discreteCofinitePackage

theorem automorphic_certificate_closed {D : SymmetricDomainObject} (C : AutomorphicCertificate D) :
    AutomorphicCertificateClosed C := by
  refine And.intro C.automorphicFormsDefinedClosed
    (And.intro C.discreteSubgroupFixedClosed
      (And.intro C.cofiniteVolumeVerifiedClosed
        (And.intro C.finiteDimensionalProvedClosed (discrete_cofinite_closed_from_evidence D.discreteCofinitePackage C.evidence))))

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse