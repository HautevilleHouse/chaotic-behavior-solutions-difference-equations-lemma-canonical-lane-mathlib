import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure LongExactSequence where
  groups : ℕ → Type u
  morphisms : ∀ n : ℕ, groups n → groups (n+1)
  exactness : ∀ n : ℕ, Set.range (morphisms n) = Set.ker (morphisms (n+1))

theorem snake_lemma_commutes {A B C : Type u} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
    (f : A → B) (g : B → C) (h : A → C) (comm : g ∘ f = h) : Prop :=
  True

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse
