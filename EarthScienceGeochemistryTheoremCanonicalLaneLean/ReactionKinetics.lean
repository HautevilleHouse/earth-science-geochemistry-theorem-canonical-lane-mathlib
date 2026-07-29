import EarthScienceGeochemistryTheoremCanonicalLaneLean.MathlibObjects

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  equilibriumConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  equilibriumConstantClosed : R.equilibriumConstant
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.equilibriumConstant ∧ R.activationEnergy ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.activationEnergyClosed E.temperatureDependenceClosed))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse