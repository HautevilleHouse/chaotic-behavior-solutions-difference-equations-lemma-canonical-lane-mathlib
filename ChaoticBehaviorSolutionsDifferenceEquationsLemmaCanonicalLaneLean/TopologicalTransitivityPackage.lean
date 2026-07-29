import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean.DifferenceEquationOperator

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure TopologicalTransitivityPackage {T : DiscreteTimeDomain}
    (O : DifferenceEquationOperator T) where
  topologyOnStateSpace : TopologicalSpace O.stateSpace
  denseOrbitExists : Prop
  forwardOrbitClosure : O.stateSpace -> Set (O.stateSpace)
  denseOrbitImpliesTransitivity : ∀ x : O.stateSpace,
    closure (forwardOrbitClosure x) = Set.univ -> denseOrbitExists
  transitiveProperty : Prop

structure TopologicalTransitivityPackageEvidence {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (P : TopologicalTransitivityPackage O) where
  denseOrbitExistsClosed : P.denseOrbitExists
  transitivePropertyClosed : P.transitiveProperty

def TopologicalTransitivityPackageClosed {T : DiscreteTimeDomain}
    {O : DifferenceEquationOperator T} (P : TopologicalTransitivityPackage O) : Prop :=
  P.denseOrbitExists ∧ P.transitiveProperty

theorem topological_transitivity_package_closed_from_evidence
    {T : DiscreteTimeDomain} {O : DifferenceEquationOperator T}
    (P : TopologicalTransitivityPackage O) (E : TopologicalTransitivityPackageEvidence P) :
    TopologicalTransitivityPackageClosed P := by
  exact And.intro E.denseOrbitExistsClosed E.transitivePropertyClosed

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse