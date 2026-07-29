import EarthScienceGeochemistryTheoremCanonicalLaneLean.Thermodynamics

/-!
# Chemical Equilibrium Package
-/

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantExpression : Prop
  leChateliersPrinciple : Prop
  speciationModel : Prop
  solubilityProduct : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantExpressionClosed : C.equilibriumConstantExpression
  leChateliersPrincipleClosed : C.leChateliersPrinciple
  speciationModelClosed : C.speciationModel
  solubilityProductClosed : C.solubilityProduct

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantExpression ∧ C.leChateliersPrinciple ∧
  C.speciationModel ∧ C.solubilityProduct

theorem chemical_equilibrium_closed_from_evidence
    (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantExpressionClosed
    (And.intro E.leChateliersPrincipleClosed
      (And.intro E.speciationModelClosed E.solubilityProductClosed))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse