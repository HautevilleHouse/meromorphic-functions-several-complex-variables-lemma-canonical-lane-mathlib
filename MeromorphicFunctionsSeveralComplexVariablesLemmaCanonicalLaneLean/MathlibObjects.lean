import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean

open Complex

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  domainDimension : Nat
  meromorphicFunction : space.carrier → ℂ
  polarSet : Set space.carrier
  meromorphicOnPolarSet : MeromorphicOn meromorphicFunction polarSet
  conclusion : MeromorphicWitnessClosed this

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  True

end MeromorphicFunctionsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse