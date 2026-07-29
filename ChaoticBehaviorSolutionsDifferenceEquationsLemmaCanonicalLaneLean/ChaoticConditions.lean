import canonicalLaneMathlib.AdmissibleClass
import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquations

/-!
# Chaotic Conditions Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure ChaoticConditionsPackage (D : DifferenceEquationsPackage) where
  sensitiveDependence : Prop
  transitivity : Prop
  densePeriodicPoints : Prop
  mixingProperty : Prop

def ChaoticConditionsClosed (C : ChaoticConditionsPackage D) : Prop :=
  C.sensitiveDependence ∧ C.transitivity ∧ C.densePeriodicPoints ∧ C.mixingProperty

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse