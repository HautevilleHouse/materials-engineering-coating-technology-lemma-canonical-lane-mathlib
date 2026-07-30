import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.CrystallographyPhaseDiagram

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure ElasticityFractureMechanicsPackage {C : CrystallographyPhaseDiagramPackage} where
  stressStrainConstitutive : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  residualStress : Prop

structure ElasticityFractureMechanicsEvidence {C : CrystallographyPhaseDiagramPackage} (E : ElasticityFractureMechanicsPackage C) where
  stressStrainConstitutiveClosed : E.stressStrainConstitutive
  fractureToughnessClosed : E.fractureToughness
  crackPropagationClosed : E.crackPropagation
  residualStressClosed : E.residualStress

def ElasticityFractureMechanicsClosed {C : CrystallographyPhaseDiagramPackage} (E : ElasticityFractureMechanicsPackage C) : Prop :=
  E.stressStrainConstitutive ∧ E.fractureToughness ∧ E.crackPropagation ∧ E.residualStress

theorem elasticity_fracture_mechanics_closed_from_evidence {C : CrystallographyPhaseDiagramPackage} (E : ElasticityFractureMechanicsPackage C) (Ev : ElasticityFractureMechanicsEvidence E) : ElasticityFractureMechanicsClosed E := by
  exact And.intro Ev.stressStrainConstitutiveClosed (And.intro Ev.fractureToughnessClosed (And.intro Ev.crackPropagationClosed Ev.residualStressClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse