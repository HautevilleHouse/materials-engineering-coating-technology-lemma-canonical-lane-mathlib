import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.CoatingPhaseEquilibrium
import HautevilleHouse.MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.ElasticFractureInterface

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoatingPhaseEquilibriumClosed A.object ∧ ElasticFractureInterfaceClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCoatingTechnologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coating_technology_endgame (A : AdmissibleClass) :
    ConstrainedCoatingTechnologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse