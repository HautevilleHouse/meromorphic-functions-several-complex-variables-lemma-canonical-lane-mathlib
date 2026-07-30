import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicValueDistribution

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure EndpointClassificationPackage {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} (V : ValueDistributionPackage F) where
  targetType : Type u
  meromorphicExtension : Prop
  endpointReached : Prop
  endpointMatchesLemma : Prop
  meromorphicExtensionTerm : meromorphicExtension
  endpointReachedTerm : endpointReached
  endpointMatchesLemmaTerm : endpointMatchesLemma

structure EndpointClassificationEvidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {V : ValueDistributionPackage F} (E : EndpointClassificationPackage V) where
  meromorphicExtensionClosed : E.meromorphicExtension
  endpointReachedClosed : E.endpointReached
  endpointMatchesLemmaClosed : E.endpointMatchesLemma

def EndpointClassificationClosed {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {V : ValueDistributionPackage F} (E : EndpointClassificationPackage V) : Prop :=
  E.meromorphicExtension ∧ E.endpointReached ∧ E.endpointMatchesLemma

theorem endpoint_classification_closed_from_evidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} {V : ValueDistributionPackage F} (E : EndpointClassificationPackage V) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E :=
  And.intro Ev.meromorphicExtensionClosed (And.intro Ev.endpointReachedClosed Ev.endpointMatchesLemmaClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse