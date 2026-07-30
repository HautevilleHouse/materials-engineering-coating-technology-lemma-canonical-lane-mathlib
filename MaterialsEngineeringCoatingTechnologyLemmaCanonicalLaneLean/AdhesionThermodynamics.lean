import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure AdhesionThermodynamicsPackage where
  workOfAdhesion : ℝ
  surfaceEnergyCoating : ℝ
  surfaceEnergySubstrate : ℝ
  interfacialEnergy : ℝ
  temperature : ℝ
  equilibriumContactAngle : ℝ

structure AdhesionThermodynamicsEvidence (A : AdhesionThermodynamicsPackage) where
  workPositive : A.workOfAdhesion > 0
  surfaceEnergiesPositive : A.surfaceEnergyCoating > 0 ∧ A.surfaceEnergySubstrate > 0
  interfacialEnergyPositive : A.interfacialEnergy > 0
  temperaturePositive : A.temperature > 0
  contactAngleRange : 0 ≤ A.equilibriumContactAngle ∧ A.equilibriumContactAngle ≤ π

def AdhesionThermodynamicsClosed (A : AdhesionThermodynamicsPackage) : Prop :=
  A.workOfAdhesion > 0 ∧ (A.surfaceEnergyCoating > 0 ∧ A.surfaceEnergySubstrate > 0) ∧
  A.interfacialEnergy > 0 ∧ A.temperature > 0 ∧ (0 ≤ A.equilibriumContactAngle ∧ A.equilibriumContactAngle ≤ π)

theorem adhesion_thermodynamics_closed_from_evidence
    (A : AdhesionThermodynamicsPackage) (E : AdhesionThermodynamicsEvidence A) :
    AdhesionThermodynamicsClosed A := by
  exact And.intro E.workPositive (And.intro E.surfaceEnergiesPositive (And.intro E.interfacialEnergyPositive (And.intro E.temperaturePositive E.contactAngleRange)))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
