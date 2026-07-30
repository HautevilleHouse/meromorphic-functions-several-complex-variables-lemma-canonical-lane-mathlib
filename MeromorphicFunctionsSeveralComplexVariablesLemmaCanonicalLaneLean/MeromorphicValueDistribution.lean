import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicIntegralRepresentation

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ValueDistributionPackage {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} (I : IntegralRepresentationPackage F) where
  nevanlinnaCharacteristic : Prop
  deficiencyRelation : Prop
  secondMainTheorem : Prop
  nevanlinnaCharacteristicTerm : nevanlinnaCharacteristic
  deficiencyRelationTerm : deficiencyRelation
  secondMainTheoremTerm : secondMainTheorem

structure ValueDistributionEvidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {I : IntegralRepresentationPackage F} (V : ValueDistributionPackage I) where
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  deficiencyRelationClosed : V.deficiencyRelation
  secondMainTheoremClosed : V.secondMainTheorem

def ValueDistributionClosed {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {I : IntegralRepresentationPackage F} (V : ValueDistributionPackage I) : Prop :=
  V.nevanlinnaCharacteristic ∧ V.deficiencyRelation ∧ V.secondMainTheorem

theorem value_distribution_closed_from_evidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {I : IntegralRepresentationPackage F} (V : ValueDistributionPackage I) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V :=
  And.intro E.nevanlinnaCharacteristicClosed (And.intro E.deficiencyRelationClosed E.secondMainTheoremClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse