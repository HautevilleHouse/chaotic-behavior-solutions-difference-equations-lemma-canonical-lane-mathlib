import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceMapBifurcation

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure MixingPropertiesPackage {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} {B : DifferenceMapBifurcationPackage E L} where
  topologicallyMixed : Prop
  ergodicMeasure : Prop
  correlationDecay : Prop
  invariantMeasureExists : Prop

structure MixingPropertiesEvidence {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} {B : DifferenceMapBifurcationPackage E L}
    (M : MixingPropertiesPackage E L B) where
  topologicallyMixedClosed : M.topologicallyMixed
  ergodicMeasureClosed : M.ergodicMeasure
  correlationDecayClosed : M.correlationDecay
  invariantMeasureExistsClosed : M.invariantMeasureExists

def MixingPropertiesClosed {E : ChaoticDifferenceEquation}
    {L : LyapunovExponentPackage E} {B : DifferenceMapBifurcationPackage E L}
    (M : MixingPropertiesPackage E L B) : Prop :=
  M.topologicallyMixed ∧ M.ergodicMeasure ∧ M.correlationDecay ∧ M.invariantMeasureExists

theorem mixing_properties_closed_from_evidence
    {E : ChaoticDifferenceEquation} {L : LyapunovExponentPackage E}
    {B : DifferenceMapBifurcationPackage E L} (M : MixingPropertiesPackage E L B)
    (Ev : MixingPropertiesEvidence M) : MixingPropertiesClosed M := by
  exact And.intro Ev.topologicallyMixedClosed
    (And.intro Ev.ergodicMeasureClosed
      (And.intro Ev.correlationDecayClosed Ev.invariantMeasureExistsClosed))

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse