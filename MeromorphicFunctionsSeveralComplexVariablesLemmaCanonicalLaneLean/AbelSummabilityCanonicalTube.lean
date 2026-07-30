import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure AbelSummabilityCanonicalTubePackage where
  directionDomain : Type u
  tubeDomain : Type v
  summationMethodDefined : Prop
  canonicalTubeBounded : Prop
  tauberianCondition : Prop
  kernelRegularity : Prop

structure AbelSummabilityCanonicalTubeEvidence (A : AbelSummabilityCanonicalTubePackage) where
  summationMethodDefinedClosed : A.summationMethodDefined
  canonicalTubeBoundedClosed : A.canonicalTubeBounded
  tauberianConditionClosed : A.tauberianCondition
  kernelRegularityClosed : A.kernelRegularity

def AbelSummabilityCanonicalTubeClosed (A : AbelSummabilityCanonicalTubePackage) : Prop :=
  A.summationMethodDefined ∧ A.canonicalTubeBounded ∧ A.tauberianCondition ∧ A.kernelRegularity

theorem abel_summability_canonical_tube_closed_from_evidence
    (A : AbelSummabilityCanonicalTubePackage) (E : AbelSummabilityCanonicalTubeEvidence A) :
    AbelSummabilityCanonicalTubeClosed A := by
  exact And.intro E.summationMethodDefinedClosed
    (And.intro E.canonicalTubeBoundedClosed
      (And.intro E.tauberianConditionClosed E.kernelRegularityClosed))

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse