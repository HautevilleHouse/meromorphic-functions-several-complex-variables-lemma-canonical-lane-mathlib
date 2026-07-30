import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CauchyIntegralFormulaPackage {G : SeveralComplexVariablesPackage} where
  polydiscDomain : G.domain
  integrandHolomorphic : G.holomorphicOnDomain polydiscDomain
  integralRepresentation : Prop
  cauchyEstimate : Prop
  integralRepresentationTerm : integralRepresentation
  cauchyEstimateTerm : cauchyEstimate

structure CauchyIntegralFormulaEvidence {G : SeveralComplexVariablesPackage}
  (C : CauchyIntegralFormulaPackage G) where
  integralRepresentationClosed : C.integralRepresentation
  cauchyEstimateClosed : C.cauchyEstimate

def CauchyIntegralFormulaClosed {G : SeveralComplexVariablesPackage}
  (C : CauchyIntegralFormulaPackage G) : Prop :=
  C.integralRepresentation ∧ C.cauchyEstimate

theorem cauchy_integral_formula_closed_from_evidence
  {G : SeveralComplexVariablesPackage} (C : CauchyIntegralFormulaPackage G)
  (E : CauchyIntegralFormulaEvidence C) : CauchyIntegralFormulaClosed C := by
  exact And.intro E.integralRepresentationClosed E.cauchyEstimateClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse