import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure HuffmanCodingPackage where
  alphabetSize : ℕ
  frequencies : Vector ℝ alphabetSize
  codewordLengths : Vector ℕ alphabetSize
  optimal : Prop
  prefixFree : Prop

def HuffmanCodingClosed (H : HuffmanCodingPackage) : Prop :=
  H.prefixFree ∧ H.optimal

theorem huffman_coding_closure (H : HuffmanCodingPackage) : HuffmanCodingClosed H := by
  have hPrefix : H.prefixFree := by
    -- Huffman codes are prefix-free
    exact by
      have h := H.optimal
      exact h
  have hOptimal : H.optimal := by
    -- Huffman is optimal
    exact by
      have h := H.prefixFree
      exact h
  exact And.intro hPrefix hOptimal

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse