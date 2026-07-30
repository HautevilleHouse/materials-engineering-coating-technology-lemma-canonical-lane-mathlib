import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def coatingProjection : Projection CoatingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem coating_projection_idempotent (x : CoatingEndgameState) :
    coatingProjection.toFun (coatingProjection.toFun x) = coatingProjection.toFun x := by
  exact coatingProjection.idempotent x

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse