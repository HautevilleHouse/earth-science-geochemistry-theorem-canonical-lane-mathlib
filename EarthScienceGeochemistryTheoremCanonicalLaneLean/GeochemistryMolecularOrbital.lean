import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

structure MolecularOrbitalPackage where
  atomicOrbitalOverlap : Prop
  bondingAntibondingFormation : Prop
  molecularEnergyLevels : Prop
  electronConfiguration : Prop
  ligandFieldEffects : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  atomicOrbitalOverlapClosed : M.atomicOrbitalOverlap
  bondingAntibondingFormationClosed : M.bondingAntibondingFormation
  molecularEnergyLevelsClosed : M.molecularEnergyLevels
  electronConfigurationClosed : M.electronConfiguration
  ligandFieldEffectsClosed : M.ligandFieldEffects

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.atomicOrbitalOverlap ∧ M.bondingAntibondingFormation ∧ M.molecularEnergyLevels ∧ M.electronConfiguration ∧ M.ligandFieldEffects

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.atomicOrbitalOverlapClosed
    (And.intro E.bondingAntibondingFormationClosed
      (And.intro E.molecularEnergyLevelsClosed
        (And.intro E.electronConfigurationClosed E.ligandFieldEffectsClosed)))

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse