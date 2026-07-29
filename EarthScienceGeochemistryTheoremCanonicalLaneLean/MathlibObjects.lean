import EarthScienceGeochemistryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeochemistryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeochemistrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeochemistryAdmittedObject where
  space : GeochemistrySpace
  equilibrium : Prop
  reactionRateDefined : Prop
  rateModel : Type
  rateTopology : TopologicalSpace rateModel
  rateLawEstablished : Prop
  conclusion : rateLawEstablished

structure GeochemistryEndgameState where
  object : GeochemistryAdmittedObject

def GeochemistryWitnessClosed (O : GeochemistryAdmittedObject) : Prop :=
  O.rateLawEstablished

end EarthScienceGeochemistryTheoremCanonicalLaneLean
end HautevilleHouse