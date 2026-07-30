import MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CoherentSheavesPackage (M : ComplexManifoldPackage) where
  structureSheaf : Type u₁
  coherenceProperty : Prop
  finitelyGenerated : Prop

def CoherentSheavesPackage.admissible (C : CoherentSheavesPackage M) : Prop :=
  C.coherenceProperty ∧ C.finitelyGenerated

structure CoherentSheavesEvidence {M : ComplexManifoldPackage}
    (C : CoherentSheavesPackage M) where
  coherencePropertyClosed : C.coherenceProperty
  finitelyGeneratedClosed : C.finitelyGenerated

def CoherentSheavesClosed {M : ComplexManifoldPackage}
    (C : CoherentSheavesPackage M) : Prop :=
  C.admissible

theorem coherent_sheaves_closed_from_evidence
    {M : ComplexManifoldPackage} (C : CoherentSheavesPackage M)
    (E : CoherentSheavesEvidence C) : CoherentSheavesClosed C := by
  unfold CoherentSheavesClosed CoherentSheavesPackage.admissible
  exact And.intro E.coherencePropertyClosed E.finitelyGeneratedClosed

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse