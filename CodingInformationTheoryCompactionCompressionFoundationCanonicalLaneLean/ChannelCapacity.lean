import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  capacityRealization : ℝ
  capacityAchievable : Prop
  capacityTheoremStatement : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityTheoremClosed : C.capacityTheoremStatement

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityTheoremStatement

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage)
    (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C :=
  E.capacityTheoremClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse