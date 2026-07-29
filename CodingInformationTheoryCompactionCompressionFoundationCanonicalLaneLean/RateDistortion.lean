import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  reproductionAlphabet : Type v
  distortionMeasure : sourceAlphabet → reproductionAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  rateDistortionTheoremStatement : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionTheoremClosed : R.rateDistortionTheoremStatement

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.rateDistortionTheoremStatement

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage)
    (E : RateDistortionEvidence R) : RateDistortionClosed R :=
  E.rateDistortionTheoremClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse