import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure ShannonEntropyPackage where
  sourceAlphabet : Type u
  distribution : sourceAlphabet → ℝ
  entropy : ℝ
  entropyFormulaValid : Prop
  chainRuleValid : Prop
  conditionalEntropy : (sourceAlphabet → ℝ) → ℝ

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyFormulaClosed : E.entropyFormulaValid
  chainRuleClosed : E.chainRuleValid

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyFormulaValid ∧ E.chainRuleValid

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage) (Ev : ShannonEntropyEvidence E) :
    ShannonEntropyClosed E := by
  exact And.intro Ev.entropyFormulaClosed Ev.chainRuleClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse