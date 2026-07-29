import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalEnergyLevels : Type
  bondingCharacter : Prop
  ligandFieldTheory : Prop
  crystalFieldSplitting : Prop
  bondingCharacterClosed : bondingCharacter
  ligandFieldTheoryClosed : ligandFieldTheory
  crystalFieldSplittingClosed : crystalFieldSplitting

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  bondingCharacterClosed : M.bondingCharacter
  ligandFieldTheoryClosed : M.ligandFieldTheory
  crystalFieldSplittingClosed : M.crystalFieldSplitting

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.bondingCharacter ∧ M.ligandFieldTheory ∧ M.crystalFieldSplitting

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.bondingCharacterClosed
    (And.intro E.ligandFieldTheoryClosed E.crystalFieldSplittingClosed)

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse
