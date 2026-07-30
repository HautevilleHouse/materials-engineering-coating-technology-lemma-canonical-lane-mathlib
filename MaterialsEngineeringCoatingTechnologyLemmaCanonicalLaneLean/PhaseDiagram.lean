import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystalStructurePackage} where
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop

structure PhaseDiagramEvidence {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint

def PhaseDiagramClosed {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.phaseBoundaries ∧ P.eutecticPoint

theorem phase_diagram_closed_from_evidence {C : CrystalStructurePackage}
    (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionRangeClosed
      (And.intro E.phaseBoundariesClosed E.eutecticPointClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
