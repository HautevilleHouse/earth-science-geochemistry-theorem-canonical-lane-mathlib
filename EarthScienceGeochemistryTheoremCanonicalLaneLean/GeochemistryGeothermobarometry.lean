import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure GeothermobarometryPackage where
  mineralEquilibrium: Prop
  pressureTemperatureConstraints: Prop
  geothermalGradient: Prop
  barometricFormulation: Prop
  thermobarometricModel: Prop

structure GeothermobarometryEvidence (G : GeothermobarometryPackage) where
  mineralEquilibriumClosed : G.mineralEquilibrium
  pressureTemperatureConstraintsClosed : G.pressureTemperatureConstraints
  geothermalGradientClosed : G.geothermalGradient
  barometricFormulationClosed : G.barometricFormulation
  thermobarometricModelClosed : G.thermobarometricModel

def GeothermobarometryClosed (G : GeothermobarometryPackage) : Prop :=
  G.mineralEquilibrium ∧ G.pressureTemperatureConstraints ∧ G.geothermalGradient ∧ G.barometricFormulation ∧ G.thermobarometricModel

theorem geothermobarometry_closed_from_evidence (G : GeothermobarometryPackage) (E : GeothermobarometryEvidence G) :
    GeothermobarometryClosed G := by
  exact And.intro E.mineralEquilibriumClosed
    (And.intro E.pressureTemperatureConstraintsClosed
      (And.intro E.geothermalGradientClosed
        (And.intro E.barometricFormulationClosed E.thermobarometricModelClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse