import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure DiscreteTimeDomain where
  time : ℕ
  order : ℕ -> ℕ -> Prop
  forwardDynamics : ℕ -> ℕ -> Prop
  reverseDynamics : ℕ -> ℕ -> Prop
  topology : TopologicalSpace ℕ
  orderIsTotal : ∀ n m : ℕ, order n m ∨ order m n
  forwardIsFunction : ∀ n : ℕ, ∃! m : ℕ, forwardDynamics n m
  reverseIsFunction : ∀ n : ℕ, ∃! m : ℕ, reverseDynamics n m

structure DiscreteTimeDomainEvidence (T : DiscreteTimeDomain) where
  orderIsTotalClosed : T.orderIsTotal
  forwardIsFunctionClosed : T.forwardIsFunction
  reverseIsFunctionClosed : T.reverseIsFunction

def DiscreteTimeDomainClosed (T : DiscreteTimeDomain) : Prop :=
  T.orderIsTotal ∧ T.forwardIsFunction ∧ T.reverseIsFunction

theorem discrete_time_domain_closed_from_evidence (T : DiscreteTimeDomain)
    (E : DiscreteTimeDomainEvidence T) : DiscreteTimeDomainClosed T := by
  exact And.intro E.orderIsTotalClosed (And.intro E.forwardIsFunctionClosed E.reverseIsFunctionClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse