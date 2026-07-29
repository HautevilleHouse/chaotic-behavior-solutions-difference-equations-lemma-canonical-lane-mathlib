import canonicalLaneMathlib.AdmissibleClass

/-!
# Difference Equations Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure DifferenceEquationsPackage where
  iterationEquation : Prop
  fixedPointSet : Prop
  periodicOrbits : Prop
  stabilityAnalysis : Prop

def DifferenceEquationsClosed (P : DifferenceEquationsPackage) : Prop :=
  P.iterationEquation ∧ P.fixedPointSet ∧ P.periodicOrbits ∧ P.stabilityAnalysis

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse