import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure InvariantMeasure {X : Type u} (f : X → X) where
  space : Set X
  measure : (Set X) → ℝ
  measureSpace : space = Set.univ
  invariance : ∀ A : Set X, measure A = measure (f '' A)

theorem invariant_measure_preserves_entropy {X : Type u} (f : X → X) (μ : InvariantMeasure f) : Prop :=
  μ.measureSpace

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse
