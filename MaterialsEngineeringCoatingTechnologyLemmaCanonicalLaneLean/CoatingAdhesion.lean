import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.ElasticityFracture

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure AdhesionPackage {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticFracturePackage P} where
  interfacialBondStrength : Prop
  residualStress : Prop
  thermalExpansionMismatch : Prop
  adhesionWork : Prop

structure AdhesionEvidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticFracturePackage P}
    (A : AdhesionPackage E) where
  interfacialBondStrengthClosed : A.interfacialBondStrength
  residualStressClosed : A.residualStress
  thermalExpansionMismatchClosed : A.thermalExpansionMismatch
  adhesionWorkClosed : A.adhesionWork

def AdhesionClosed {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticFracturePackage P}
    (A : AdhesionPackage E) : Prop :=
  A.interfacialBondStrength ∧ A.residualStress ∧ A.thermalExpansionMismatch ∧ A.adhesionWork

theorem adhesion_closed_from_evidence {C : CrystalStructurePackage}
    {P : PhaseDiagramPackage C} {E : ElasticFracturePackage P}
    (A : AdhesionPackage E) (Ev : AdhesionEvidence A) :
    AdhesionClosed A := by
  exact And.intro Ev.interfacialBondStrengthClosed
    (And.intro Ev.residualStressClosed
      (And.intro Ev.thermalExpansionMismatchClosed Ev.adhesionWorkClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
