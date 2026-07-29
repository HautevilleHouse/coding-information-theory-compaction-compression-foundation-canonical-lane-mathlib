import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  capacity : ℝ
  capacityNonnegative : capacity ≥ 0
  capacityAchievable : capacity ≤ Real.log (Finset.card (Finset.univ : Finset inputAlphabet))

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityNonnegativeClosed : C.capacityNonnegative
  capacityAchievableClosed : C.capacityAchievable

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityNonnegative ∧ C.capacityAchievable

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage)
    (Ev : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact And.intro Ev.capacityNonnegativeClosed Ev.capacityAchievableClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse