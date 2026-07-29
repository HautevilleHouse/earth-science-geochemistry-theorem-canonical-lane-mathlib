import HautevilleHouse.EarthScienceGeochemistryTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

def gateClosed (A : GeochemAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeochemAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse