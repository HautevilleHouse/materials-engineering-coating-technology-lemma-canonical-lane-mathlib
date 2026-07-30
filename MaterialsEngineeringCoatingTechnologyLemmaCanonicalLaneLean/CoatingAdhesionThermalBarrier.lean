import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.ElasticityFractureMechanics

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CoatingAdhesionThermalBarrierPackage {C : CrystallographyPhaseDiagramPackage} {E : ElasticityFractureMechanicsPackage C} where
  interfaceAdhesion : Prop
  thermalConductivity : Prop
  coefficientThermalExpansion : Prop
  thermalCycleLife : Prop

structure CoatingAdhesionThermalBarrierEvidence {C : CrystallographyPhaseDiagramPackage} {E : ElasticityFractureMechanicsPackage C} (T : CoatingAdhesionThermalBarrierPackage C E) where
  interfaceAdhesionClosed : T.interfaceAdhesion
  thermalConductivityClosed : T.thermalConductivity
  coefficientThermalExpansionClosed : T.coefficientThermalExpansion
  thermalCycleLifeClosed : T.thermalCycleLife

def CoatingAdhesionThermalBarrierClosed {C : CrystallographyPhaseDiagramPackage} {E : ElasticityFractureMechanicsPackage C} (T : CoatingAdhesionThermalBarrierPackage C E) : Prop :=
  T.interfaceAdhesion ∧ T.thermalConductivity ∧ T.coefficientThermalExpansion ∧ T.thermalCycleLife

theorem coating_adhesion_thermal_barrier_closed_from_evidence {C : CrystallographyPhaseDiagramPackage} {E : ElasticityFractureMechanicsPackage C} (T : CoatingAdhesionThermalBarrierPackage C E) (Ev : CoatingAdhesionThermalBarrierEvidence T) : CoatingAdhesionThermalBarrierClosed T := by
  exact And.intro Ev.interfaceAdhesionClosed (And.intro Ev.thermalConductivityClosed (And.intro Ev.coefficientThermalExpansionClosed Ev.thermalCycleLifeClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse