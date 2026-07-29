import canonicalLaneMathlib.AdmissibleClass
import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquations

/-!
# Topological Entropy Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure TopologicalEntropyPackage (D : DifferenceEquationsPackage) where
  positiveTopologicalEntropy : Prop
  entropyEquality : Prop
  variationalPrinciple : Prop

def TopologicalEntropyClosed (T : TopologicalEntropyPackage D) : Prop :=
  T.positiveTopologicalEntropy ∧ T.entropyEquality ∧ T.variationalPrinciple

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse