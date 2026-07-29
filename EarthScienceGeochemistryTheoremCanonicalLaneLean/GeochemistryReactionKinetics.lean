import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  activationEnergy : Prop
  reactionRateCoefficient : Prop
  equilibriumConstant : Prop
  rateLaw : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  activationEnergyClosed : R.activationEnergy
  reactionRateCoefficientClosed : R.reactionRateCoefficient
  equilibriumConstantClosed : R.equilibriumConstant
  rateLawClosed : R.rateLaw
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.activationEnergy ∧ R.reactionRateCoefficient ∧ R.equilibriumConstant ∧ R.rateLaw ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.activationEnergyClosed
    (And.intro E.reactionRateCoefficientClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.rateLawClosed E.temperatureDependenceClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse