import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicAnalyticDomains

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicFunctionPackage (D : AnalyticDomainPackage) where
  functionOnDomain : D.domain → ℂ
  holomorphicOn : Prop
  polarSet : Set D.domain
  polarSetAnalytic : Prop
  growthCondition : Prop
  holomorphicOnTerm : holomorphicOn
  polarSetAnalyticTerm : polarSetAnalytic
  growthConditionTerm : growthCondition

structure MeromorphicFunctionEvidence {D : AnalyticDomainPackage} (F : MeromorphicFunctionPackage D) where
  holomorphicOnClosed : F.holomorphicOn
  polarSetAnalyticClosed : F.polarSetAnalytic
  growthConditionClosed : F.growthCondition

def MeromorphicFunctionClosed {D : AnalyticDomainPackage} (F : MeromorphicFunctionPackage D) : Prop :=
  F.holomorphicOn ∧ F.polarSetAnalytic ∧ F.growthCondition

theorem meromorphic_function_closed_from_evidence {D : AnalyticDomainPackage} (F : MeromorphicFunctionPackage D) (E : MeromorphicFunctionEvidence F) :
    MeromorphicFunctionClosed F :=
  And.intro E.holomorphicOnClosed (And.intro E.polarSetAnalyticClosed E.growthConditionClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse