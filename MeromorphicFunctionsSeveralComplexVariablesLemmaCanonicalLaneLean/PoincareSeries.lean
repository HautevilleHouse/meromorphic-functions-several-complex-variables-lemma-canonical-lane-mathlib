import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure PoincareSeriesData where
  lattice : Type
  groupAction : lattice → ℂ^n → ℂ^n
  seriesConvergenceDomain : Set (ℂ^n)
  seriesDefinesMeromorphic : Prop

def PoincareSeriesClosed (ps : PoincareSeriesData) : Prop :=
  ps.seriesDefinesMeromorphic

theorem poincare_series_construction (ps : PoincareSeriesData) (h : PoincareSeriesClosed ps) :
    MeromorphicFunction (ps.seriesConvergenceDomain) := by
  sorry

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse