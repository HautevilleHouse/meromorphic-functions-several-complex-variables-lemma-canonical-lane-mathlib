import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicSheafPackage {D : MeromorphicDomainPackage} where
  sheafType : Type
  sectionsOverOpen : (Set D.domainType) → Type
  restrictionMaps : ∀ (U V : Set D.domainType), V ⊆ U → (sectionsOverOpen U → sectionsOverOpen V)
  sheafCondition : Prop
  meromorphicCondition : Prop

structure MeromorphicSheafEvidence {D : MeromorphicDomainPackage}
    (S : MeromorphicSheafPackage D) where
  sheafConditionClosed : S.sheafCondition
  meromorphicConditionClosed : S.meromorphicCondition

def MeromorphicSheafClosed {D : MeromorphicDomainPackage}
    (S : MeromorphicSheafPackage D) : Prop :=
  S.sheafCondition ∧ S.meromorphicCondition

theorem meromorphic_sheaf_closed_from_evidence
    {D : MeromorphicDomainPackage} (S : MeromorphicSheafPackage D)
    (E : MeromorphicSheafEvidence S) : MeromorphicSheafClosed S := by
  exact And.intro E.sheafConditionClosed E.meromorphicConditionClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse