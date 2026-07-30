import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure WearResistancePackage where
  hardness : ℝ
  elasticModulus : ℝ
  wearRate : ℝ
  coefficientOfFriction : ℝ
  contactPressure : ℝ
  slidingVelocity : ℝ

structure WearResistanceEvidence (W : WearResistancePackage) where
  hardnessPositive : W.hardness > 0
  elasticModulusPositive : W.elasticModulus > 0
  wearRateNonnegative : W.wearRate ≥ 0
  frictionCoeffRange : 0 ≤ W.coefficientOfFriction ∧ W.coefficientOfFriction ≤ 1
  contactPressurePositive : W.contactPressure > 0
  slidingVelocityPositive : W.slidingVelocity > 0

def WearResistanceClosed (W : WearResistancePackage) : Prop :=
  W.hardness > 0 ∧ W.elasticModulus > 0 ∧ W.wearRate ≥ 0 ∧
  (0 ≤ W.coefficientOfFriction ∧ W.coefficientOfFriction ≤ 1) ∧ W.contactPressure > 0 ∧ W.slidingVelocity > 0

theorem wear_resistance_closed_from_evidence
    (W : WearResistancePackage) (E : WearResistanceEvidence W) :
    WearResistanceClosed W := by
  exact And.intro E.hardnessPositive (And.intro E.elasticModulusPositive (And.intro E.wearRateNonnegative (And.intro E.frictionCoeffRange (And.intro E.contactPressurePositive E.slidingVelocityPositive))))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
