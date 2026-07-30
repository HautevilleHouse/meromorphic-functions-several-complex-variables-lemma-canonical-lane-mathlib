import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicDivisorRepresentationPackage where
  divisorType : Type u
  localRepresentation : Type v
  principalPartDefined : Prop
  poincareSeriesDefined : Prop
  singularSupportSingular : Prop
  growthCondition: Prop

structure MeromorphicDivisorRepresentationEvidence (M : MeromorphicDivisorRepresentationPackage) where
  principalPartDefinedClosed : M.principalPartDefined
  poincareSeriesDefinedClosed : M.poincareSeriesDefined
  singularSupportSingularClosed : M.singularSupportSingular
  growthConditionClosed : M.growthCondition

def MeromorphicDivisorRepresentationClosed (M : MeromorphicDivisorRepresentationPackage) : Prop :=
  M.principalPartDefined ∧ M.poincareSeriesDefined ∧ M.singularSupportSingular ∧ M.growthCondition

theorem meromorphic_divisor_representation_closed_from_evidence
    (M : MeromorphicDivisorRepresentationPackage) (E : MeromorphicDivisorRepresentationEvidence M) :
    MeromorphicDivisorRepresentationClosed M := by
  exact And.intro E.principalPartDefinedClosed
    (And.intro E.poincareSeriesDefinedClosed
      (And.intro E.singularSupportSingularClosed E.growthConditionClosed))

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse