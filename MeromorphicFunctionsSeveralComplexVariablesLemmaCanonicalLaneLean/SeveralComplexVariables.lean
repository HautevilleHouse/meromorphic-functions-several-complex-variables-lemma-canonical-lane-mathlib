import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.ComplexManifold

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure SeveralComplexVariablesPackage (M : ComplexManifoldPackage) where
  n : Nat
  coordinateFunctions : M.carrier → ℂⁿ
  holomorphicProperty : Prop
  domainOpen : Prop

def SeveralComplexVariablesPackage.admissible (S : SeveralComplexVariablesPackage M) : Prop :=
  S.holomorphicProperty ∧ S.domainOpen

structure SeveralComplexVariablesEvidence {M : ComplexManifoldPackage}
    (S : SeveralComplexVariablesPackage M) where
  holomorphicPropertyClosed : S.holomorphicProperty
  domainOpenClosed : S.domainOpen

def SeveralComplexVariablesClosed {M : ComplexManifoldPackage}
    (S : SeveralComplexVariablesPackage M) : Prop :=
  S.admissible

theorem several_complex_variables_closed_from_evidence
    {M : ComplexManifoldPackage} (S : SeveralComplexVariablesPackage M)
    (E : SeveralComplexVariablesEvidence S) : SeveralComplexVariablesClosed S := by
  unfold SeveralComplexVariablesClosed SeveralComplexVariablesPackage.admissible
  exact And.intro E.holomorphicPropertyClosed E.domainOpenClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse