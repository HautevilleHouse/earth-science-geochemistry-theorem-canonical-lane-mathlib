import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochemistryTheoremCanonicalLaneLean.GeochemicalReactionKinetics
import EarthScienceGeochemistryTheoremCanonicalLaneLean.ThermodynamicEquilibrium
import EarthScienceGeochemistryTheoremCanonicalLaneLean.MolecularOrbitalTheory

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def EarthScienceGeochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem earth_science_geochemistry_endgame (A : AdmissibleClass) :
    EarthScienceGeochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse
