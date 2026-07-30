import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure PhaseDiagramStabilityPackage where
  temperature : ℝ
  composition : ℝ
  stablePhase : String
  gibbsFreeEnergy : ℝ
  phaseBoundary_AlphaBeta : ℝ
  phaseBoundary_BetaGamma : ℝ
  solubilityLimit : ℝ

structure PhaseDiagramStabilityEvidence (P : PhaseDiagramStabilityPackage) where
  temperaturePositive : P.temperature > 0
  compositionInRange : 0 ≤ P.composition ∧ P.composition ≤ 1
  gibbsFreeEnergyMinimal : P.gibbsFreeEnergy < 0
  phaseBoundariesOrdered : P.phaseBoundary_AlphaBeta < P.phaseBoundary_BetaGamma
  solubilityLimitValid : 0 < P.solubilityLimit ∧ P.solubilityLimit < 1

def PhaseDiagramStabilityClosed (P : PhaseDiagramStabilityPackage) : Prop :=
  P.temperature > 0 ∧ (0 ≤ P.composition ∧ P.composition ≤ 1) ∧ P.gibbsFreeEnergy < 0 ∧
  P.phaseBoundary_AlphaBeta < P.phaseBoundary_BetaGamma ∧ (0 < P.solubilityLimit ∧ P.solubilityLimit < 1)

theorem phase_diagram_stability_closed_from_evidence
    (P : PhaseDiagramStabilityPackage) (E : PhaseDiagramStabilityEvidence P) :
    PhaseDiagramStabilityClosed P := by
  exact And.intro E.temperaturePositive (And.intro E.compositionInRange (And.intro E.gibbsFreeEnergyMinimal (And.intro E.phaseBoundariesOrdered E.solubilityLimitValid)))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
