import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure AnalyticDomainPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  domainOpen : Prop
  connected : Prop
  domainOpenTerm : domainOpen
  connectedTerm : connected

structure AnalyticDomainEvidence (D : AnalyticDomainPackage) where
  complexStructureClosed : D.complexStructure
  domainOpenClosed : D.domainOpen
  connectedClosed : D.connected

def AnalyticDomainClosed (D : AnalyticDomainPackage) : Prop :=
  D.complexStructure ∧ D.domainOpen ∧ D.connected

theorem analytic_domain_closed_from_evidence (D : AnalyticDomainPackage) (E : AnalyticDomainEvidence D) :
    AnalyticDomainClosed D :=
  And.intro E.complexStructureClosed (And.intro E.domainOpenClosed E.connectedClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse