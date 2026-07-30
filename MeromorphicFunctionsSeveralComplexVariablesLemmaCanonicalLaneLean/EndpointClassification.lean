import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure EndpointClassificationPackage {D : MeromorphicDomainPackage}
    {S : MeromorphicSheafPackage D} where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  steinManifoldCondition : Prop
  cohomologyVanishing : Prop
  endpointMatchesTheoremStatement : Prop

structure EndpointClassificationEvidence {D : MeromorphicDomainPackage}
    {S : MeromorphicSheafPackage D} (Epkg : EndpointClassificationPackage D S) where
  steinManifoldConditionClosed : Epkg.steinManifoldCondition
  cohomologyVanishingClosed : Epkg.cohomologyVanishing
  endpointMatchesTheoremStatementClosed : Epkg.endpointMatchesTheoremStatement

def EndpointClassificationClosed {D : MeromorphicDomainPackage}
    {S : MeromorphicSheafPackage D} (Epkg : EndpointClassificationPackage D S) : Prop :=
  Epkg.steinManifoldCondition ∧ Epkg.cohomologyVanishing ∧ Epkg.endpointMatchesTheoremStatement

theorem endpoint_classification_closed_from_evidence
    {D : MeromorphicDomainPackage} {S : MeromorphicSheafPackage D}
    (Epkg : EndpointClassificationPackage D S) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.steinManifoldConditionClosed
    (And.intro E.cohomologyVanishingClosed E.endpointMatchesTheoremStatementClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse