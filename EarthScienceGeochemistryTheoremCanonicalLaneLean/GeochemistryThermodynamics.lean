import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  spontaneityCondition : Prop
  temperaturePressureDependence : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  spontaneityConditionClosed : T.spontaneityCondition
  temperaturePressureDependenceClosed : T.temperaturePressureDependence

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.spontaneityCondition ∧ T.temperaturePressureDependence

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed
        (And.intro E.spontaneityConditionClosed E.temperaturePressureDependenceClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse