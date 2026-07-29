import HautevilleHouse.EarthScienceGeochemistryTheoremCanonicalLaneLean.GeochemAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

def bridgeClosed (A : GeochemAdmissibleClass) : Prop :=
  GeochemWitnessClosed A.object

theorem bridge_from_admissible_class (A : GeochemAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse