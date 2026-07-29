import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure LiouvilleArnoldBridge where
  integrableSystem : Type u
  invariantTori : Prop
  angleActionVariables : Prop
  integrabilityCondition : Prop

def LiouvilleArnoldBridgeClosed (B : LiouvilleArnoldBridge) : Prop :=
  B.invariantTori ∧ B.angleActionVariables ∧ B.integrabilityCondition

structure LiouvilleArnoldBridgeEvidence (B : LiouvilleArnoldBridge) where
  invariantToriClosed : B.invariantTori
  angleActionVariablesClosed : B.angleActionVariables
  integrabilityConditionClosed : B.integrabilityCondition

theorem liouville_arnold_bridge_closed_from_evidence
    (B : LiouvilleArnoldBridge) (E : LiouvilleArnoldBridgeEvidence B) :
    LiouvilleArnoldBridgeClosed B := by
  exact And.intro E.invariantToriClosed
    (And.intro E.angleActionVariablesClosed E.integrabilityConditionClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse
