import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquationOperator

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure SensitivityAnalysis {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  metricSpace : MetricSpace O.stateSpace
  sensitivityConstant : ℝ
  sensitivityCondition : ∀ x : O.stateSpace, ∀ δ > 0,
    ∃ y : O.stateSpace, ∃ n : ℕ,
    dist x y < δ ∧ dist (O.iterationMap^[n] x) (O.iterationMap^[n] y) ≥ sensitivityConstant
  constantPositive : sensitivityConstant > 0

structure SensitivityAnalysisEvidence {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (S : SensitivityAnalysis O) where
  sensitivityConditionClosed : S.sensitivityCondition
  constantPositiveClosed : S.constantPositive

def SensitivityAnalysisClosed {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (S : SensitivityAnalysis O) : Prop :=
  S.sensitivityCondition ∧ S.constantPositive

theorem sensitivity_analysis_closed_from_evidence
    {T : DiscreteTimeDomain} {O : DifferenceEquationOperator T}
    (S : SensitivityAnalysis O) (E : SensitivityAnalysisEvidence S) :
    SensitivityAnalysisClosed S := by
  exact And.intro E.sensitivityConditionClosed E.constantPositiveClosed

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse