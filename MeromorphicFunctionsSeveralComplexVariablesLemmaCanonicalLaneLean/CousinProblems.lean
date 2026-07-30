import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.CoherentSheaves

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CousinProblemsPackage {M : ComplexManifoldPackage}
    (C : CoherentSheavesPackage M) where
  firstCousinSolved : Prop
  secondCousinSolved : Prop
  domainStein : Prop

def CousinProblemsPackage.admissible (Cpkg : CousinProblemsPackage C) : Prop :=
  Cpkg.firstCousinSolved ∧ Cpkg.secondCousinSolved ∧ Cpkg.domainStein

structure CousinProblemsEvidence {M : ComplexManifoldPackage}
    {C : CoherentSheavesPackage M} (Cpkg : CousinProblemsPackage C) where
  firstCousinSolvedClosed : Cpkg.firstCousinSolved
  secondCousinSolvedClosed : Cpkg.secondCousinSolved
  domainSteinClosed : Cpkg.domainStein

def CousinProblemsClosed {M : ComplexManifoldPackage}
    {C : CoherentSheavesPackage M} (Cpkg : CousinProblemsPackage C) : Prop :=
  Cpkg.admissible

theorem cousin_problems_closed_from_evidence
    {M : ComplexManifoldPackage} {C : CoherentSheavesPackage M}
    (Cpkg : CousinProblemsPackage C) (E : CousinProblemsEvidence Cpkg) :
    CousinProblemsClosed Cpkg := by
  unfold CousinProblemsClosed CousinProblemsPackage.admissible
  exact And.intro E.firstCousinSolvedClosed
    (And.intro E.secondCousinSolvedClosed E.domainSteinClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse