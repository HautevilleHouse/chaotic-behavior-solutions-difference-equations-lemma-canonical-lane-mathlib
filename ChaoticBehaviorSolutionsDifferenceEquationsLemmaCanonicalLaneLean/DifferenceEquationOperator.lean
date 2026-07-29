import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DiscreteTimeDomain

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure DifferenceEquationOperator (T : DiscreteTimeDomain) where
  stateSpace : Type u
  iterationMap : stateSpace -> stateSpace
  initialCondition : stateSpace
  solution : ℕ -> stateSpace
  solutionDefinedByIteration : ∀ n : ℕ, solution (n+1) = iterationMap (solution n)
  initialConditionCompatible : solution 0 = initialCondition

structure DifferenceEquationOperatorEvidence {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  solutionDefinedByIterationClosed : O.solutionDefinedByIteration
  initialConditionCompatibleClosed : O.initialConditionCompatible

def DifferenceEquationOperatorClosed {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) : Prop :=
  O.solutionDefinedByIteration ∧ O.initialConditionCompatible

theorem difference_equation_operator_closed_from_evidence
    {T : DiscreteTimeDomain} (O : DifferenceEquationOperator T)
    (E : DifferenceEquationOperatorEvidence O) : DifferenceEquationOperatorClosed O := by
  exact And.intro E.solutionDefinedByIterationClosed E.initialConditionCompatibleClosed

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse