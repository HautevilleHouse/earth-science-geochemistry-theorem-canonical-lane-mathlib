import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure CrystalFieldPackage where
  coordinationGeometry : Type
  crystalFieldSplitting : Prop
  siteSymmetry : Prop
  ligandFieldEffects : Prop

structure CrystalFieldEvidence (C : CrystalFieldPackage) where
  crystalFieldSplittingClosed : C.crystalFieldSplitting
  siteSymmetryClosed : C.siteSymmetry
  ligandFieldEffectsClosed : C.ligandFieldEffects

def CrystalFieldClosed (C : CrystalFieldPackage) : Prop :=
  C.crystalFieldSplitting ∧ C.siteSymmetry ∧ C.ligandFieldEffects

theorem crystal_field_closed_from_evidence
    (C : CrystalFieldPackage) (E : CrystalFieldEvidence C) :
    CrystalFieldClosed C := by
  exact And.intro E.crystalFieldSplittingClosed
    (And.intro E.siteSymmetryClosed E.ligandFieldEffectsClosed)

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse