import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure FractureToughnessPackage where
  criticalStressIntensity : ℝ
  coatingThickness : ℝ
  crackLength : ℝ
  youngModulus : ℝ
  poissonRatio : ℝ
  interfaceToughness : ℝ

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  stressIntensityPositive : F.criticalStressIntensity > 0
  coatingThicknessPositive : F.coatingThickness > 0
  crackLengthPositive : F.crackLength > 0
  youngModulusPositive : F.youngModulus > 0
  poissonRatioRange : -1 < F.poissonRatio ∧ F.poissonRatio < 0.5
  interfaceToughnessPositive : F.interfaceToughness > 0

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensity > 0 ∧ F.coatingThickness > 0 ∧ F.crackLength > 0 ∧
  F.youngModulus > 0 ∧ (-1 < F.poissonRatio ∧ F.poissonRatio < 0.5) ∧ F.interfaceToughness > 0

theorem fracture_toughness_closed_from_evidence
    (F : FractureToughnessPackage) (E : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro E.stressIntensityPositive (And.intro E.coatingThicknessPositive (And.intro E.crackLengthPositive (And.intro E.youngModulusPositive (And.intro E.poissonRatioRange E.interfaceToughnessPositive))))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
