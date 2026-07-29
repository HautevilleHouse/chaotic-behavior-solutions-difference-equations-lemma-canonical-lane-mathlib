import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquationOperator

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure LyapunovExponentPackage {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  jacobianExists : Prop
  lyapunovExponent : ℝ
  lyapunovExponentComputed : Prop
  positiveLyapunovExponent : lyapunovExponent > 0
  exponentialDivergence : Prop

structure LyapunovExponentPackageEvidence {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (L : LyapunovExponentPackage O) where
  lyapunovExponentComputedClosed : L.lyapunovExponentComputed
  exponentialDivergenceClosed : L.exponentialDivergence

def LyapunovExponentPackageClosed {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (L : LyapunovExponentPackage O) : Prop :=
  L.lyapunovExponentComputed ∧ L.exponentialDivergence ∧ L.positiveLyapunovExponent

theorem lyapunov_exponent_package_closed_from_evidence
    {T : DiscreteTimeDomain} {O : DifferenceEquationOperator T}
    (L : LyapunovExponentPackage O) (E : LyapunovExponentPackageEvidence L) :
    LyapunovExponentPackageClosed L := by
  exact And.intro E.lyapunovExponentComputedClosed
    (And.intro E.exponentialDivergenceClosed L.positiveLyapunovExponent)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse