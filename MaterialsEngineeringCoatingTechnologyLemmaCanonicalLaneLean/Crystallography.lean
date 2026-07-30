import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  basisVectors : Type v
  unitCellParameters : Prop
  symmetryGroup : Prop
  millerIndices : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  basisVectorsClosed : C.basisVectors
  unitCellParametersClosed : C.unitCellParameters
  symmetryGroupClosed : C.symmetryGroup
  millerIndicesClosed : C.millerIndices

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLattice ∧ C.basisVectors ∧ C.unitCellParameters ∧ C.symmetryGroup ∧ C.millerIndices

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.basisVectorsClosed
      (And.intro E.unitCellParametersClosed
        (And.intro E.symmetryGroupClosed E.millerIndicesClosed)))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
