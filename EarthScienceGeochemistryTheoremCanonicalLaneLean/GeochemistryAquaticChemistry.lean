import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure AquaticChemistryPackage where
  acidBaseEquilibrium : Prop
  complexationReaction : Prop
  redoxReaction : Prop
  solubilityProduct : Prop
  speciationModel : Prop

structure AquaticChemistryEvidence (A : AquaticChemistryPackage) where
  acidBaseEquilibriumClosed : A.acidBaseEquilibrium
  complexationReactionClosed : A.complexationReaction
  redoxReactionClosed : A.redoxReaction
  solubilityProductClosed : A.solubilityProduct
  speciationModelClosed : A.speciationModel

def AquaticChemistryClosed (A : AquaticChemistryPackage) : Prop :=
  A.acidBaseEquilibrium ∧ A.complexationReaction ∧ A.redoxReaction ∧ A.solubilityProduct ∧ A.speciationModel

theorem aquatic_chemistry_closed_from_evidence (A : AquaticChemistryPackage) (E : AquaticChemistryEvidence A) :
    AquaticChemistryClosed A := by
  exact And.intro E.acidBaseEquilibriumClosed
    (And.intro E.complexationReactionClosed
      (And.intro E.redoxReactionClosed
        (And.intro E.solubilityProductClosed E.speciationModelClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse