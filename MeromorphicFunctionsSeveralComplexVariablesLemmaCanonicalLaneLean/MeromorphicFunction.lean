import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.ComplexManifold

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicFunctionPackage {M : ComplexManifoldPackage} where
  domain : Set M.carrier
  analyticPart : M.carrier → ℂ
  polarSet : Set M.carrier
  meromorphicProperty : Prop

structure MeromorphicFunctionEvidence {M : ComplexManifoldPackage}
    (F : MeromorphicFunctionPackage M) where
  meromorphicPropertyClosed : F.meromorphicProperty

def MeromorphicFunctionClosed {M : ComplexManifoldPackage}
    (F : MeromorphicFunctionPackage M) : Prop :=
  F.meromorphicProperty

theorem meromorphic_function_closed_from_evidence
    {M : ComplexManifoldPackage} (F : MeromorphicFunctionPackage M)
    (E : MeromorphicFunctionEvidence F) : MeromorphicFunctionClosed F := by
  exact E.meromorphicPropertyClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse