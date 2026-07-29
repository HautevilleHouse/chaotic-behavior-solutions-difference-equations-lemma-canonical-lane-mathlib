import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.ChaoticDifferenceEquations

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure LyapunovExponentPackage {E : ChaoticDifferenceEquation} where
  exponent : ℝ
  positivity : Prop
  stabilityImplication : Prop
  exponentialGrowth : Prop

structure LyapunovExponentEvidence {E : ChaoticDifferenceEquation}
    (L : LyapunovExponentPackage E) where
  positivityClosed : L.positivity
  stabilityImplicationClosed : L.stabilityImplication
  exponentialGrowthClosed : L.exponentialGrowth

def LyapunovExponentClosed {E : ChaoticDifferenceEquation}
    (L : LyapunovExponentPackage E) : Prop :=
  L.positivity ∧ L.stabilityImplication ∧ L.exponentialGrowth

theorem lyapunov_exponent_closed_from_evidence
    {E : ChaoticDifferenceEquation} (L : LyapunovExponentPackage E)
    (Ev : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro Ev.positivityClosed
    (And.intro Ev.stabilityImplicationClosed Ev.exponentialGrowthClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse