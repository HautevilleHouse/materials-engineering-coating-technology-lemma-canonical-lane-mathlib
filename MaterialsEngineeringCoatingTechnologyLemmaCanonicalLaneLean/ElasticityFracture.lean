import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.PhaseDiagram

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure ElasticFracturePackage {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} where
  youngModulus : Type u
  poissonRatio : Type v
  fractureToughness : Prop
  stressIntensityFactor : Prop
  crackPropagationCriterion : Prop

structure ElasticFractureEvidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticFracturePackage P) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  fractureToughnessClosed : E.fractureToughness
  stressIntensityFactorClosed : E.stressIntensityFactor
  crackPropagationCriterionClosed : E.crackPropagationCriterion

def ElasticFractureClosed {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticFracturePackage P) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.fractureToughness ∧ E.stressIntensityFactor ∧ E.crackPropagationCriterion

theorem elastic_fracture_closed_from_evidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} (E : ElasticFracturePackage P)
    (Ev : ElasticFractureEvidence E) : ElasticFractureClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.fractureToughnessClosed
        (And.intro Ev.stressIntensityFactorClosed Ev.crackPropagationCriterionClosed)))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
