import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure SourceCodeSymbolEntropyPackage where
  alphabet : Type u
  symbolProbability : alphabet → ℝ
  entropy : ℝ
  entropyNonnegative : entropy ≥ 0
  entropyUpperBound : entropy ≤ Real.log (Finset.card (Finset.univ : Finset alphabet))

structure SourceCodeSymbolEntropyEvidence (E : SourceCodeSymbolEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative
  entropyUpperBoundClosed : E.entropyUpperBound

def SourceCodeSymbolEntropyClosed (E : SourceCodeSymbolEntropyPackage) : Prop :=
  E.entropyNonnegative ∧ E.entropyUpperBound

theorem source_code_symbol_entropy_closed_from_evidence (E : SourceCodeSymbolEntropyPackage)
    (Ev : SourceCodeSymbolEntropyEvidence E) : SourceCodeSymbolEntropyClosed E := by
  exact And.intro Ev.entropyNonnegativeClosed Ev.entropyUpperBoundClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse
