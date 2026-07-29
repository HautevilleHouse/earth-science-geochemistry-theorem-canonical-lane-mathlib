import EarthScienceGeochemistryTheoremCanonicalLaneLean.GeochemistryThermodynamics

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure GeochemistryAnalyticFoundation where
  thermodynamics : ThermodynamicVariables
  kinetics : ReactionKinetics
  equilibriumEvidence : equilibriumCondition thermodynamics
  arrheniusEvidence : arrheniusLaw kinetics thermodynamics.temperature

def GeochemistryAnalyticFoundationClosed (A : GeochemistryAnalyticFoundation) : Prop :=
  equilibriumCondition A.thermodynamics ∧ arrheniusLaw A.kinetics A.thermodynamics.temperature

theorem geochemistry_analytic_foundation_closed_from_evidence
    (A : GeochemistryAnalyticFoundation) :
    GeochemistryAnalyticFoundationClosed A := by
  exact And.intro A.equilibriumEvidence A.arrheniusEvidence

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse