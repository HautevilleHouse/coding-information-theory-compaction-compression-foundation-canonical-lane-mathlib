import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean.SourceCodingTheorem

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure LosslessCode (S : ShannonEntropyPackage) where
  codewords : S.alphabet → List Bool
  prefixFree : Prop
  averageLength : ℝ
  optimality : averageLength ≤ (SourceCodingPackage.expectedLength (by
    exact SourceCodingPackage.mk [] 0 (by trivial) (by trivial)))

structure LosslessCompressionEvidence {S : ShannonEntropyPackage} (L : LosslessCode S) where
  prefixFreeClosed : L.prefixFree
  optimalityClosed : L.optimality

def LosslessCompressionClosed {S : ShannonEntropyPackage} (L : LosslessCode S) : Prop :=
  L.prefixFree ∧ L.optimality

theorem lossless_compression_closed_from_evidence {S : ShannonEntropyPackage}
    (L : LosslessCode S) (Ev : LosslessCompressionEvidence L) :
    LosslessCompressionClosed L := by
  exact And.intro Ev.prefixFreeClosed Ev.optimalityClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse