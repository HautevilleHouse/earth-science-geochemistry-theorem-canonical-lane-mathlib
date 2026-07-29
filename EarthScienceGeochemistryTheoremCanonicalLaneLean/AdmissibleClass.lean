import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure EarthScienceAdmittedObject where
  system : Type
  thermodynamicEquilibrium : Prop
  reactionKineticsModel : Prop
  molecularOrbitalStructure : Prop
  conclusion : thermodynamicEquilibrium ∧ reactionKineticsModel ∧ molecularOrbitalStructure

structure AdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.thermodynamicEquilibrium ∧ A.object.reactionKineticsModel ∧ A.object.molecularOrbitalStructure) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse