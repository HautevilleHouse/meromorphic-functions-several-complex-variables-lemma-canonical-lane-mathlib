import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean.MeromorphicFunctionDefinition

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

structure IntegralRepresentationPackage {D : AnalyticDomainPackage} (F : MeromorphicFunctionPackage D) where
  integralKernel : Type u
  kernelMeromorphic : Prop
  integralReconstruction : Prop
  residueFormula : Prop
  kernelMeromorphicTerm : kernelMeromorphic
  integralReconstructionTerm : integralReconstruction
  residueFormulaTerm : residueFormula

structure IntegralRepresentationEvidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} (I : IntegralRepresentationPackage F) where
  kernelMeromorphicClosed : I.kernelMeromorphic
  integralReconstructionClosed : I.integralReconstruction
  residueFormulaClosed : I.residueFormula

def IntegralRepresentationClosed {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} (I : IntegralRepresentationPackage F) : Prop :=
  I.kernelMeromorphic ∧ I.integralReconstruction ∧ I.residueFormula

theorem integral_representation_closed_from_evidence {D : AnalyticDomainPackage} {F : MeromorphicFunctionPackage D} (I : IntegralRepresentationPackage F) (E : IntegralRepresentationEvidence I) :
    IntegralRepresentationClosed I :=
  And.intro E.kernelMeromorphicClosed (And.intro E.integralReconstructionClosed E.residueFormulaClosed)

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse