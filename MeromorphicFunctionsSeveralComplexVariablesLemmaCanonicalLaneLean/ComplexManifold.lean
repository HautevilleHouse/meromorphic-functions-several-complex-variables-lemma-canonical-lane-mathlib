import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.CanonicalLaneMathlib

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ComplexManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexAtlas : Type v
  holomorphicCharts : Prop
  hausdorffSecondCountable : Prop
  dimensionN : Nat

def ComplexManifoldPackage.admissible (M : ComplexManifoldPackage) : Prop :=
  M.holomorphicCharts ∧ M.hausdorffSecondCountable

structure ComplexManifoldEvidence (M : ComplexManifoldPackage) where
  holomorphicChartsClosed : M.holomorphicCharts
  hausdorffSecondCountableClosed : M.hausdorffSecondCountable

def ComplexManifoldClosed (M : ComplexManifoldPackage) : Prop :=
  M.admissible

theorem complex_manifold_closed_from_evidence (M : ComplexManifoldPackage)
    (E : ComplexManifoldEvidence M) : ComplexManifoldClosed M := by
  unfold ComplexManifoldClosed ComplexManifoldPackage.admissible
  exact And.intro E.holomorphicChartsClosed E.hausdorffSecondCountableClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse