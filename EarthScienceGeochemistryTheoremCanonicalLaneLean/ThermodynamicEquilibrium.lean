import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type
  equilibriumCondition : Prop
  phaseStability : Prop
  chemicalPotential : Type
  equilibriumConditionClosed : equilibriumCondition
  phaseStabilityClosed : phaseStability

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConditionClosed : T.equilibriumCondition
  phaseStabilityClosed : T.phaseStability

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumCondition ∧ T.phaseStability

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.equilibriumConditionClosed E.phaseStabilityClosed

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse
