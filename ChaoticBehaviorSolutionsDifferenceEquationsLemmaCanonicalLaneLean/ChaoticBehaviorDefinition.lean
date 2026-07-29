import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquationOperator

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure ChaoticBehaviorDefinition {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop
  chaosDefinitionType : String
  sensitiveDependenceCondition : sensitiveDependence
  topologicalTransitivityCondition : topologicalTransitivity
  densePeriodicPointsCondition : densePeriodicPoints

structure ChaoticBehaviorDefinitionEvidence {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (C : ChaoticBehaviorDefinition O) where
  sensitiveDependenceConditionClosed : C.sensitiveDependenceCondition
  topologicalTransitivityConditionClosed : C.topologicalTransitivityCondition
  densePeriodicPointsConditionClosed : C.densePeriodicPointsCondition

def ChaoticBehaviorDefinitionClosed {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (C : ChaoticBehaviorDefinition O) : Prop :=
  C.sensitiveDependenceCondition ∧ C.topologicalTransitivityCondition ∧ C.densePeriodicPointsCondition

theorem chaotic_behavior_definition_closed_from_evidence
    {T : DiscreteTimeDomain} {O : DifferenceEquationOperator T}
    (C : ChaoticBehaviorDefinition O) (E : ChaoticBehaviorDefinitionEvidence C) :
    ChaoticBehaviorDefinitionClosed C := by
  exact And.intro E.sensitiveDependenceConditionClosed
    (And.intro E.topologicalTransitivityConditionClosed E.densePeriodicPointsConditionClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse