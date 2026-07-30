import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CoatingPhaseDiagramPackage where
  componentElements : Type u
  binaryPhaseRegions : Prop
  eutecticComposition : Prop
  solubilityLimits : Prop
  temperatureProfile : Prop

structure CoatingPhaseEquilibriumEvidence (C : CoatingPhaseDiagramPackage) where
  binaryPhaseRegionsClosed : C.binaryPhaseRegions
  eutecticCompositionClosed : C.eutecticComposition
  solubilityLimitsClosed : C.solubilityLimits
  temperatureProfileClosed : C.temperatureProfile

def CoatingPhaseEquilibriumClosed (C : CoatingPhaseDiagramPackage) : Prop :=
  C.binaryPhaseRegions ∧ C.eutecticComposition ∧ C.solubilityLimits ∧ C.temperatureProfile

theorem coating_phase_equilibrium_closed_from_evidence
    (C : CoatingPhaseDiagramPackage) (E : CoatingPhaseEquilibriumEvidence C) :
    CoatingPhaseEquilibriumClosed C := by
  exact And.intro E.binaryPhaseRegionsClosed
    (And.intro E.eutecticCompositionClosed
      (And.intro E.solubilityLimitsClosed E.temperatureProfileClosed))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse