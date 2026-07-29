import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure ChaoticDifferenceEquation where
  stateSpace : Type u
  iterationMap : stateSpace → stateSpace
  initialCondition : stateSpace
  solutionSequence : ℕ → stateSpace
  solutionDefinedByRecurrence : ∀ n : ℕ, solutionSequence (n+1) = iterationMap (solutionSequence n)

structure ChaoticBehavior where
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop

def chaoticInSenseDevaney (eq : ChaoticDifferenceEquation) : Prop :=
  eq.solutionDefinedByRecurrence

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse
