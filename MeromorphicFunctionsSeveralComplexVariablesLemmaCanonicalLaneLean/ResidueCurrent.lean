import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ResidueCurrent (U : Type) [TopologicalSpace U] [ComplexManifold U] where
  current : (U → ℂ) → ℂ
  currentClosed : Prop
  residueComputed : Prop

def ResidueCurrentClosed {U : Type} [TopologicalSpace U] [ComplexManifold U] (rc : ResidueCurrent U) : Prop :=
  rc.currentClosed ∧ rc.residueComputed

theorem residue_current_exists (U : Type) [TopologicalSpace U] [ComplexManifold U] (f : MeromorphicFunction U) :
    ∃ (rc : ResidueCurrent U), ResidueCurrentClosed rc := by
  sorry

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse