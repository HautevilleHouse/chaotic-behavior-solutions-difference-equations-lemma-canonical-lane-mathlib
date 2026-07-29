import canonicalLaneMathlib.AdmissibleClass
import ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquations

/-!
# Lyapunov Exponents Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure LyapunovExponentsPackage (D : DifferenceEquationsPackage) where
  existsPositiveLyapunov : Prop
  exponentialDivergence : Prop
  ergodicMeasureSupport : Prop

def LyapunovExponentsClosed (L : LyapunovExponentsPackage D) : Prop :=
  L.existsPositiveLyapunov ∧ L.exponentialDivergence ∧ L.ergodicMeasureSupport

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse