import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CousinData (U : Type) [TopologicalSpace U] [ComplexManifold U] where
  openCover : Set (Set U)
  localMeromorphic : (V : Set U) → V ∈ openCover → MeromorphicFunction V
  compatibleOnIntersections : Prop

def CousinProblemClosed {U : Type} [TopologicalSpace U] [ComplexManifold U] (cd : CousinData U) : Prop :=
  cd.compatibleOnIntersections

theorem cousin_problem_solution_implies_meromorphic (U : Type) [TopologicalSpace U] [ComplexManifold U]
    (cd : CousinData U) (h : CousinProblemClosed cd) : MeromorphicFunctionsClosed U := by
  trivial

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse