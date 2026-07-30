import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicDomainPackage where
  dimension : Nat
  domainType : Type
  domainTopology : TopologicalSpace domainType
  complexStructure : ComplexStructure domainType
  pseudoconvex : Prop
  boundarySmooth : Prop

structure MeromorphicDomainEvidence (D : MeromorphicDomainPackage) where
  pseudoconvexClosed : D.pseudoconvex
  boundarySmoothClosed : D.boundarySmooth

def MeromorphicDomainClosed (D : MeromorphicDomainPackage) : Prop :=
  D.pseudoconvex ∧ D.boundarySmooth

theorem meromorphic_domain_closed_from_evidence
    (D : MeromorphicDomainPackage) (E : MeromorphicDomainEvidence D) :
    MeromorphicDomainClosed D := by
  exact And.intro E.pseudoconvexClosed E.boundarySmoothClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse