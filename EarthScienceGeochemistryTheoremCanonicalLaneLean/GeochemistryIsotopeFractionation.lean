import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure IsotopeFractionationPackage where
  equilibriumFractionationFactor : Prop
  kineticFractionationFactor : Prop
  massDependentFractionation : Prop
  isotopeExchangeReaction : Prop
  paleoclimateApplication : Prop

structure IsotopeFractionationEvidence (I : IsotopeFractionationPackage) where
  equilibriumFractionationFactorClosed : I.equilibriumFractionationFactor
  kineticFractionationFactorClosed : I.kineticFractionationFactor
  massDependentFractionationClosed : I.massDependentFractionation
  isotopeExchangeReactionClosed : I.isotopeExchangeReaction
  paleoclimateApplicationClosed : I.paleoclimateApplication

def IsotopeFractionationClosed (I : IsotopeFractionationPackage) : Prop :=
  I.equilibriumFractionationFactor ∧ I.kineticFractionationFactor ∧ I.massDependentFractionation ∧ I.isotopeExchangeReaction ∧ I.paleoclimateApplication

theorem isotope_fractionation_closed_from_evidence (I : IsotopeFractionationPackage) (E : IsotopeFractionationEvidence I) :
    IsotopeFractionationClosed I := by
  exact And.intro E.equilibriumFractionationFactorClosed
    (And.intro E.kineticFractionationFactorClosed
      (And.intro E.massDependentFractionationClosed
        (And.intro E.isotopeExchangeReactionClosed E.paleoclimateApplicationClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse