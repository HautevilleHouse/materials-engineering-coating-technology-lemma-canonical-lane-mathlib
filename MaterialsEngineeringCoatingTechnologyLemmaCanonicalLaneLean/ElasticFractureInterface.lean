import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure ElasticFractureInterfacePackage where
  criticalStressIntensityFactor : Prop
  crackPropagationCriterion : Prop
  interfaceAdhesionStrength : Prop
  residualStressDistribution : Prop
  fractureToughnessGradient : Prop

structure ElasticFractureInterfaceEvidence (E : ElasticFractureInterfacePackage) where
  criticalStressIntensityFactorClosed : E.criticalStressIntensityFactor
  crackPropagationCriterionClosed : E.crackPropagationCriterion
  interfaceAdhesionStrengthClosed : E.interfaceAdhesionStrength
  residualStressDistributionClosed : E.residualStressDistribution
  fractureToughnessGradientClosed : E.fractureToughnessGradient

def ElasticFractureInterfaceClosed (E : ElasticFractureInterfacePackage) : Prop :=
  E.criticalStressIntensityFactor ∧ E.crackPropagationCriterion ∧
  E.interfaceAdhesionStrength ∧ E.residualStressDistribution ∧
  E.fractureToughnessGradient

theorem elastic_fracture_interface_closed_from_evidence
    (E : ElasticFractureInterfacePackage) (Ev : ElasticFractureInterfaceEvidence E) :
    ElasticFractureInterfaceClosed E := by
  exact And.intro Ev.criticalStressIntensityFactorClosed
    (And.intro Ev.crackPropagationCriterionClosed
      (And.intro Ev.interfaceAdhesionStrengthClosed
        (And.intro Ev.residualStressDistributionClosed Ev.fractureToughnessGradientClosed)))

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse