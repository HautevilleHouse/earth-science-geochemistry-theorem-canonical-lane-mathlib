import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure IsotopeFractionation where
  heavyIsotope : String
  lightIsotope : String
  fractionationFactor : ℝ
  equilibriumConstant : ℝ
  massDependence : Prop

structure IsotopeFractionationEvidence (F : IsotopeFractionation) where
  fractionationFactorClosed : F.fractionationFactor > 0
  massDependenceClosed : F.massDependence

def IsotopeFractionationClosed (F : IsotopeFractionation) : Prop :=
  F.fractionationFactor > 0 ∧ F.massDependence

theorem isotope_fractionation_closed_from_evidence (F : IsotopeFractionation) (E : IsotopeFractionationEvidence F) : IsotopeFractionationClosed F := by
  exact And.intro E.fractionationFactorClosed E.massDependenceClosed

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse