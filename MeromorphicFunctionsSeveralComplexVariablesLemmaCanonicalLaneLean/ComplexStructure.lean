import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.SeveralComplexVariables

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ComplexStructurePackage {M : ComplexManifoldPackage}
    (S : SeveralComplexVariablesPackage M) where
  integrabilityCondition : Prop
  newlanderNirenbergResult : Prop
  holomorphicCoordinates : Prop

def ComplexStructurePackage.admissible (Cs : ComplexStructurePackage S) : Prop :=
  Cs.integrabilityCondition ∧ Cs.newlanderNirenbergResult ∧ Cs.holomorphicCoordinates

structure ComplexStructureEvidence {M : ComplexManifoldPackage}
    {S : SeveralComplexVariablesPackage M} (Cs : ComplexStructurePackage S) where
  integrabilityConditionClosed : Cs.integrabilityCondition
  newlanderNirenbergResultClosed : Cs.newlanderNirenbergResult
  holomorphicCoordinatesClosed : Cs.holomorphicCoordinates

def ComplexStructureClosed {M : ComplexManifoldPackage}
    {S : SeveralComplexVariablesPackage M} (Cs : ComplexStructurePackage S) : Prop :=
  Cs.admissible

theorem complex_structure_closed_from_evidence
    {M : ComplexManifoldPackage} {S : SeveralComplexVariablesPackage M}
    (Cs : ComplexStructurePackage S) (E : ComplexStructureEvidence Cs) :
    ComplexStructureClosed Cs := by
  unfold ComplexStructureClosed ComplexStructurePackage.admissible
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.newlanderNirenbergResultClosed E.holomorphicCoordinatesClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse