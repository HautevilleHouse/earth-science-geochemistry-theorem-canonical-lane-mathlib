import EarthScienceGeochemistryTheoremCanonicalLaneLean.MolecularOrbitalTheory

/-!
# Thermodynamics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  equilibriumCondition : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.equilibriumCondition

theorem thermodynamics_closed_from_evidence
    (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed E.equilibriumConditionClosed))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse