import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean

structure ChaoticAdmittedObject where
  space : Type
  differenceEquation : Prop
  solutionExists : Prop
  chaoticBehavior : Prop
  conclusion : chaoticBehavior

def ChaoticWitnessClosed (O : ChaoticAdmittedObject) : Prop :=
  O.chaoticBehavior

end ChaoticBehaviorSolutionsDifferenceEquationsLemmaCanonicalLaneLean
end HautevilleHouse
