import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.LyapunovExponent

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure DifferenceMapBifurcationPackage {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} where
  parameterSpace : Type u
  bifurcationDiagram : parameterSpace → Prop
  periodDoubling : Prop
  transitionToChaos : Prop
  criticalParameter : parameterSpace

structure DifferenceMapBifurcationEvidence {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} (B : DifferenceMapBifurcationPackage E L) where
  periodDoublingClosed : B.periodDoubling
  transitionToChaosClosed : B.transitionToChaos

def DifferenceMapBifurcationClosed {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} (B : DifferenceMapBifurcationPackage E L) : Prop :=
  B.periodDoubling ∧ B.transitionToChaos

theorem difference_map_bifurcation_closed_from_evidence
    {E : ChaoticDifferenceEquation} {L : LyapunovExponentPackage E}
    (B : DifferenceMapBifurcationPackage E L) (Ev : DifferenceMapBifurcationEvidence B) :
    DifferenceMapBifurcationClosed B := by
  exact And.intro Ev.periodDoublingClosed Ev.transitionToChaosClosed

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse