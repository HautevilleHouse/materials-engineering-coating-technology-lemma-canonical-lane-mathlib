import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CoatingMicrostructurePackage where
  substrateMaterial : String
  coatingMaterial : String
  depositionMethod : String
  interfaceBondType : String
  porosityFraction : ℝ
  thickness : ℝ
  crystallinity : Prop
  residualStress : Prop

structure CoatingMicrostructureEvidence (C : CoatingMicrostructurePackage) where
  porosityFractionValid : C.porosityFraction ≥ 0 ∧ C.porosityFraction ≤ 1
  thicknessPositive : C.thickness > 0
  crystallinityClosed : C.crystallinity
  residualStressClosed : C.residualStress

def CoatingMicrostructureClosed (C : CoatingMicrostructurePackage) : Prop :=
  (C.porosityFraction ≥ 0 ∧ C.porosityFraction ≤ 1) ∧ C.thickness > 0 ∧
  C.crystallinity ∧ C.residualStress

theorem coating_microstructure_closed_from_evidence
    (C : CoatingMicrostructurePackage) (E : CoatingMicrostructureEvidence C) :
    CoatingMicrostructureClosed C := by
  exact And.intro E.porosityFractionValid (And.intro E.thicknessPositive (And.intro E.crystallinityClosed E.residualStressClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
