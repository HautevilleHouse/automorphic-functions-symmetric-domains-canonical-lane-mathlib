import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean

structure LanglandsCorrespondence (F : AutomorphicForm) (G : HeckeAlgebra) where
  automorphicForm : F
  heckeAlgebra : G
  galoisRepresentation : Type
  functoriality : Prop
  localGlobalCompatibility : Prop

structure LanglandsCorrespondenceEvidence (L : LanglandsCorrespondence) where
  functorialityClosed : L.functoriality
  localGlobalCompatibilityClosed : L.localGlobalCompatibility

def LanglandsCorrespondenceClosed (L : LanglandsCorrespondence) : Prop :=
  L.functoriality ∧ L.localGlobalCompatibility

theorem langlands_correspondence_closed_from_evidence (L : LanglandsCorrespondence) (E : LanglandsCorrespondenceEvidence L) : LanglandsCorrespondenceClosed L := by
  exact And.intro E.functorialityClosed E.localGlobalCompatibilityClosed

end AutomorphicFunctionsSymmetricDomainsCanonicalLaneLean
end HautevilleHouse