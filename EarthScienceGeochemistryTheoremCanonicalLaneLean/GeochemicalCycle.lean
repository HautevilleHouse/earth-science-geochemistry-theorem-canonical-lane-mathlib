import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure GeochemicalCycle where
  reservoirNames : List String
  fluxes : List ℝ
  reservoirSizes : List ℝ
  steadyStateCondition : Prop

structure GeochemicalCycleEvidence (C : GeochemicalCycle) where
  steadyStateConditionClosed : C.steadyStateCondition
  fluxSumZero : List.sum C.fluxes = 0

def GeochemicalCycleClosed (C : GeochemicalCycle) : Prop :=
  C.steadyStateCondition ∧ List.sum C.fluxes = 0

theorem geochemical_cycle_closed_from_evidence (C : GeochemicalCycle) (E : GeochemicalCycleEvidence C) : GeochemicalCycleClosed C := by
  exact And.intro E.steadyStateConditionClosed E.fluxSumZero

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse