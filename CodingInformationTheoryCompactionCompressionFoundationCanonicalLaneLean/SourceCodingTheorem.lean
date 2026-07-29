import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure SourceCodingTheoremPackage where
  sourceSymbols : Type u
  sourceDistribution : sourceSymbols → ℝ
  codeLengths : sourceSymbols → ℕ
  expectedCodeLength : ℝ
  entropy : ℝ
  expectedLengthGeqEntropy : expectedCodeLength ≥ entropy
  expectedLengthLeqEntropyPlusOne : expectedCodeLength ≤ entropy + 1

structure SourceCodingTheoremEvidence (S : SourceCodingTheoremPackage) where
  expectedLengthGeqEntropyClosed : S.expectedLengthGeqEntropy
  expectedLengthLeqEntropyPlusOneClosed : S.expectedLengthLeqEntropyPlusOne

def SourceCodingTheoremClosed (S : SourceCodingTheoremPackage) : Prop :=
  S.expectedLengthGeqEntropy ∧ S.expectedLengthLeqEntropyPlusOne

theorem source_coding_theorem_closed_from_evidence (S : SourceCodingTheoremPackage)
    (Ev : SourceCodingTheoremEvidence S) : SourceCodingTheoremClosed S := by
  exact And.intro Ev.expectedLengthGeqEntropyClosed Ev.expectedLengthLeqEntropyPlusOneClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse