import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure MineralEquilibrium where
  mineralAssemblage : List String
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  phaseRuleSatisfied : Prop

structure MineralEquilibriumEvidence (M : MineralEquilibrium) where
  phaseRuleSatisfiedClosed : M.phaseRuleSatisfied
  temperatureRangeNonempty : M.temperatureRange.1 ≤ M.temperatureRange.2

def MineralEquilibriumClosed (M : MineralEquilibrium) : Prop :=
  M.phaseRuleSatisfied ∧ M.temperatureRange.1 ≤ M.temperatureRange.2

theorem mineral_equilibrium_closed_from_evidence (M : MineralEquilibrium) (E : MineralEquilibriumEvidence M) : MineralEquilibriumClosed M := by
  exact And.intro E.phaseRuleSatisfiedClosed E.temperatureRangeNonempty

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse