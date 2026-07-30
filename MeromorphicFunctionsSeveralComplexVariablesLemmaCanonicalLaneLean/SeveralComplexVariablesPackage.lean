import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure SeveralComplexVariablesPackage where
  domain : Type u
  dimension : Nat
  holomorphicFunctions : Type v
  meromorphicFunctions : Type w
  sheafStructure : Prop
  sheafStructureTerm : sheafStructure

structure SeveralComplexVariablesEvidence (G : SeveralComplexVariablesPackage) where
  sheafStructureClosed : G.sheafStructure

def SeveralComplexVariablesClosed (G : SeveralComplexVariablesPackage) : Prop :=
  G.sheafStructure

theorem several_complex_variables_closed_from_evidence
  (G : SeveralComplexVariablesPackage) (E : SeveralComplexVariablesEvidence G) :
  SeveralComplexVariablesClosed G := by
  exact E.sheafStructureClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse