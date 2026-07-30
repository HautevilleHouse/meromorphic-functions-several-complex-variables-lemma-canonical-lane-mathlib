import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunction

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure DecompositionTheoremPackage {M : ComplexManifoldPackage}
    (F : MeromorphicFunctionPackage M) where
  polarDecomposition : Prop
  principalPartConvergent : Prop

def DecompositionTheoremPackage.admissible
    (D : DecompositionTheoremPackage F) : Prop :=
  D.polarDecomposition ∧ D.principalPartConvergent

structure DecompositionTheoremEvidence {M : ComplexManifoldPackage}
    {F : MeromorphicFunctionPackage M} (D : DecompositionTheoremPackage F) where
  polarDecompositionClosed : D.polarDecomposition
  principalPartConvergentClosed : D.principalPartConvergent

def DecompositionTheoremClosed {M : ComplexManifoldPackage}
    {F : MeromorphicFunctionPackage M} (D : DecompositionTheoremPackage F) : Prop :=
  D.admissible

theorem decomposition_theorem_closed_from_evidence
    {M : ComplexManifoldPackage} {F : MeromorphicFunctionPackage M}
    (D : DecompositionTheoremPackage F) (E : DecompositionTheoremEvidence D) :
    DecompositionTheoremClosed D := by
  unfold DecompositionTheoremClosed DecompositionTheoremPackage.admissible
  exact And.intro E.polarDecompositionClosed E.principalPartConvergentClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse