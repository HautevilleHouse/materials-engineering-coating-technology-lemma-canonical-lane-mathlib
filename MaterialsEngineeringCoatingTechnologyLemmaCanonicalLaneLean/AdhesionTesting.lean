import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.ElasticityFracture

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure AdhesionTestingPackage {C : CoatingMicrostructurePackage}
    {E : ElasticityFracturePackage C} where
  pullOffTestResults : Prop
  scratchTestResults : Prop
  interfacialFractureEnergy : Prop
  adhesionStrengthComputed : Prop

structure AdhesionTestingEvidence {C : CoatingMicrostructurePackage}
    {E : ElasticityFracturePackage C} (A : AdhesionTestingPackage C E) where
  pullOffTestResultsClosed : A.pullOffTestResults
  scratchTestResultsClosed : A.scratchTestResults
  interfacialFractureEnergyClosed : A.interfacialFractureEnergy
  adhesionStrengthComputedClosed : A.adhesionStrengthComputed

def AdhesionTestingClosed {C : CoatingMicrostructurePackage}
    {E : ElasticityFracturePackage C} (A : AdhesionTestingPackage C E) : Prop :=
  A.pullOffTestResults ∧ A.scratchTestResults ∧ A.interfacialFractureEnergy ∧ A.adhesionStrengthComputed

theorem adhesion_testing_closed_from_evidence {C : CoatingMicrostructurePackage}
    {E : ElasticityFracturePackage C} (A : AdhesionTestingPackage C E)
    (Ev : AdhesionTestingEvidence A) : AdhesionTestingClosed A := by
  exact And.intro Ev.pullOffTestResultsClosed
    (And.intro Ev.scratchTestResultsClosed
      (And.intro Ev.interfacialFractureEnergyClosed Ev.adhesionStrengthComputedClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
