import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicFunction (U : Type) [TopologicalSpace U] [ComplexManifold U] where
  carrier : U → ℂ
  meromorphic : Prop
  poleSet : Set U
  poleSetClosed : IsClosed poleSet
  holomorphicOnComplement : MeromorphicOn carrier poleSetᶜ

def MeromorphicFunctionsClosed (U : Type) [TopologicalSpace U] [ComplexManifold U] : Prop :=
  True  -- placeholder, will be refined

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse