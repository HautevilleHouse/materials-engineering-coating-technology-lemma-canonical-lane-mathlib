import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CrystallographyPhaseDiagramPackage where
  bravaisLattice : Type u
  latticeParameters : Type v
  phaseComposition : Prop
  crystallographicOrientation : Prop
  phaseBoundaryEnergy : Prop

structure CrystallographyPhaseDiagramEvidence (C : CrystallographyPhaseDiagramPackage) where
  phaseCompositionClosed : C.phaseComposition
  crystallographicOrientationClosed : C.crystallographicOrientation
  phaseBoundaryEnergyClosed : C.phaseBoundaryEnergy

def CrystallographyPhaseDiagramClosed (C : CrystallographyPhaseDiagramPackage) : Prop :=
  C.phaseComposition ∧ C.crystallographicOrientation ∧ C.phaseBoundaryEnergy

theorem crystallography_phase_diagram_closed_from_evidence (C : CrystallographyPhaseDiagramPackage) (E : CrystallographyPhaseDiagramEvidence C) : CrystallographyPhaseDiagramClosed C := by
  exact And.intro E.phaseCompositionClosed (And.intro E.crystallographicOrientationClosed E.phaseBoundaryEnergyClosed)

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse