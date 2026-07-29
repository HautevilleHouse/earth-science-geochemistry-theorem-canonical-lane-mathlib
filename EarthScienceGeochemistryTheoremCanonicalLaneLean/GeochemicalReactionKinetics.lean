import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure GeochemicalReactionKineticsPackage where
  reactionRateConstant : Type
  activationEnergy : Type
  temperatureDependence : Prop
  massActionLaw : Prop
  equilibriumConstant : Prop
  temperatureDependenceClosed : temperatureDependence
  massActionLawClosed : massActionLaw
  equilibriumConstantClosed : equilibriumConstant

structure GeochemicalReactionKineticsEvidence (K : GeochemicalReactionKineticsPackage) where
  temperatureDependenceClosed : K.temperatureDependence
  massActionLawClosed : K.massActionLaw
  equilibriumConstantClosed : K.equilibriumConstant

def GeochemicalReactionKineticsClosed (K : GeochemicalReactionKineticsPackage) : Prop :=
  K.temperatureDependence ∧ K.massActionLaw ∧ K.equilibriumConstant

theorem geochemical_reaction_kinetics_closed_from_evidence
    (K : GeochemicalReactionKineticsPackage)
    (E : GeochemicalReactionKineticsEvidence K) :
    GeochemicalReactionKineticsClosed K := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.massActionLawClosed E.equilibriumConstantClosed)

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse
