import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure MaterialsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialsAdmittedObject where
  space : MaterialsSpace
  coatingDeposited : Prop
  adhesionAchieved : Prop
  failureModel : Type
  failureTopology : TopologicalSpace failureModel
  failureCriteriaSatisfied : Prop
  conclusion : failureCriteriaSatisfied

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.failureCriteriaSatisfied

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
