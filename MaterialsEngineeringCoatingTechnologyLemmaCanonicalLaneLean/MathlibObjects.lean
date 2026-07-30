import MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CoatingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoatingAdmittedObject where
  space : CoatingSpace
  coatingLayer : Prop
  substrate : Prop
  adhesionStrength : Prop
  conclusion : adhesionStrength

structure CoatingEndgameState where
  object : CoatingAdmittedObject

def CoatingWitnessClosed (O : CoatingAdmittedObject) : Prop :=
  O.adhesionStrength

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse