import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CousinCohomologyPackage where
  cohomologyDegree : ℕ
  steinCover : Type u
  meromorphicData : Type v
  firstCousinProblemSolved : Prop
  secondCousinProblemSolved : Prop
  cohomologyVanishing : Prop

structure CousinCohomologyEvidence (C : CousinCohomologyPackage) where
  firstCousinProblemSolvedClosed : C.firstCousinProblemSolved
  secondCousinProblemSolvedClosed : C.secondCousinProblemSolved
  cohomologyVanishingClosed : C.cohomologyVanishing

def CousinCohomologyClosed (C : CousinCohomologyPackage) : Prop :=
  C.firstCousinProblemSolved ∧ C.secondCousinProblemSolved ∧ C.cohomologyVanishing

theorem cousin_cohomology_closed_from_evidence
    (C : CousinCohomologyPackage) (E : CousinCohomologyEvidence C) :
    CousinCohomologyClosed C := by
  exact And.intro E.firstCousinProblemSolvedClosed
    (And.intro E.secondCousinProblemSolvedClosed E.cohomologyVanishingClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse