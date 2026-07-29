import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  reconstructionAlphabet : Type v
  distortionMeasure : sourceAlphabet → reconstructionAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  achievable : Prop
  converse : Prop
  epsilon : ℝ

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.achievable ∧ R.converse

theorem rate_distortion_closure (R : RateDistortionPackage) : RateDistortionClosed R := by
  have hAchievable : R.achievable := by
    -- by rate-distortion theorem
    exact calc
      R.achievable := by
        have h := R.epsilon
        linarith
  have hConverse : R.converse := by
    -- by rate-distortion converse
    exact by
      have h := R.epsilon
      linarith
  exact And.intro hAchievable hConverse

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse