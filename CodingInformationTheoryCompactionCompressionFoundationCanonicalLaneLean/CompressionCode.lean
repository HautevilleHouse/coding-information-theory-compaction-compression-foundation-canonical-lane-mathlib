import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure CompressionCodePackage where
  codebook : Type u
  encoder : messageAlphabet → codebook
  decoder : codebook → messageAlphabet
  compressionRatio : ℝ
  distortionBound : ℝ
  compressionCodeTheoremStatement : Prop

structure CompressionCodeEvidence (C : CompressionCodePackage) where
  compressionCodeTheoremClosed : C.compressionCodeTheoremStatement

def CompressionCodeClosed (C : CompressionCodePackage) : Prop :=
  C.compressionCodeTheoremStatement

theorem compression_code_closed_from_evidence (C : CompressionCodePackage)
    (E : CompressionCodeEvidence C) : CompressionCodeClosed C :=
  E.compressionCodeTheoremClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse