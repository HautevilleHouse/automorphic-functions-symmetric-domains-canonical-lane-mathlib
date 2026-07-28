import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure AutomorphicAdmittedObject where
  domain : SymmetricDomain
  automorphicForm : AutomorphicForm domain
  heckeAlgebra : HeckeAlgebra domain.GType
  shimuraVariety : ShimuraVariety domain.GType domain
  langlandsCorrespondence : LanglandsCorrespondence automorphicForm heckeAlgebra
  conclusion : LanglandsCorrespondenceClosed langlandsCorrespondence

structure AdmissibleClass where
  object : AutomorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse