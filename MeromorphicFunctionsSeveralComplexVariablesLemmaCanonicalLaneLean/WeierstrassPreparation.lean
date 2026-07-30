import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure WeierstrassPolynomial (U : Type) [TopologicalSpace U] [ComplexManifold U] where
  polynomial : U → ℂ[T]
  monic : Prop
  coefficientsMeromorphic : Prop

def WeierstrassPreparationClosed {U : Type} [TopologicalSpace U] [ComplexManifold U] (f : MeromorphicFunction U) (W : WeierstrassPolynomial U) : Prop :=
  W.monic ∧ W.coefficientsMeromorphic

theorem weierstrass_preparation_theorem (U : Type) [TopologicalSpace U] [ComplexManifold U] (f : MeromorphicFunction U) (z : U) :
    ∃ (W : WeierstrassPolynomial U), WeierstrassPreparationClosed f W := by
  sorry

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse