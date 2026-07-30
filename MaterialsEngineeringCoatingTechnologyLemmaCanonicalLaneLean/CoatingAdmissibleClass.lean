import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean

structure CoatingAdmittedObject where
  substrate : Type
  coating : Type
  adhesionProperty : Prop
  residualStress : Prop
  conclusion : adhesionProperty ∧ residualStress

structure AdmissibleClass where
  object : CoatingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.adhesionProperty ∧ A.object.residualStress) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCoatingTechnologyLemmaCanonicalLaneLean
end HautevilleHouse