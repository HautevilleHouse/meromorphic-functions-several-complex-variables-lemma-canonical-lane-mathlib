import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.CauchyIntegralFormula

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicStructureSheafPackage {G : SeveralComplexVariablesPackage}
  {C : CauchyIntegralFormulaPackage G} where
  meromorphicFunctionType : Type u
  poleSetType : Type v
  localRepresentation : Prop
  growthCondition : Prop
  localRepresentationTerm : localRepresentation
  growthConditionTerm : growthCondition

structure MeromorphicStructureSheafEvidence {G : SeveralComplexVariablesPackage}
  {C : CauchyIntegralFormulaPackage G}
  (S : MeromorphicStructureSheafPackage C) where
  localRepresentationClosed : S.localRepresentation
  growthConditionClosed : S.growthCondition

def MeromorphicStructureSheafClosed {G : SeveralComplexVariablesPackage}
  {C : CauchyIntegralFormulaPackage G} (S : MeromorphicStructureSheafPackage C) : Prop :=
  S.localRepresentation ∧ S.growthCondition

theorem meromorphic_structure_sheaf_closed_from_evidence
  {G : SeveralComplexVariablesPackage} {C : CauchyIntegralFormulaPackage G}
  (S : MeromorphicStructureSheafPackage C) (E : MeromorphicStructureSheafEvidence S) :
  MeromorphicStructureSheafClosed S := by
  exact And.intro E.localRepresentationClosed E.growthConditionClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse