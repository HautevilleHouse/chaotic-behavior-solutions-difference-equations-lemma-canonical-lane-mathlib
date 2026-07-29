import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquationOperator

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure PeriodicOrbitAnalysis {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  periodicPointSet : Set (O.stateSpace)
  periodMap : O.stateSpace -> ℕ
  allPointsPeriodic : ∀ x : O.stateSpace, periodMap x > 0
  densityProperty : Prop
  existenceOfDensePeriodicOrbits : Prop

structure PeriodicOrbitAnalysisEvidence {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (P : PeriodicOrbitAnalysis O) where
  allPointsPeriodicClosed : P.allPointsPeriodic
  densityPropertyClosed : P.densityProperty
  existenceOfDensePeriodicOrbitsClosed : P.existenceOfDensePeriodicOrbits

def PeriodicOrbitAnalysisClosed {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (P : PeriodicOrbitAnalysis O) : Prop :=
  P.allPointsPeriodic ∧ P.densityProperty ∧ P.existenceOfDensePeriodicOrbits

theorem periodic_orbit_analysis_closed_from_evidence
    {T : DiscreteTimeDomain} {O : DifferenceEquationOperator T}
    (P : PeriodicOrbitAnalysis O) (E : PeriodicOrbitAnalysisEvidence P) :
    PeriodicOrbitAnalysisClosed P := by
  exact And.intro E.allPointsPeriodicClosed
    (And.intro E.densityPropertyClosed E.existenceOfDensePeriodicOrbitsClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse