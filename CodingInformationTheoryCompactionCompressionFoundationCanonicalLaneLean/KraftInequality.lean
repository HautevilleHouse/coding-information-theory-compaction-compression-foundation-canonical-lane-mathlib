import canonicalLaneMathlib.AdmissibleClass

/-!
# Kraft Inequality Package
-/

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure KraftInequalityPackage where
  codeLengths : List ℕ
  alphabetSize : ℕ
  inequalityHolds : ∑ l in codeLengths, (1 / (alphabetSize : ℝ) ^ l) ≤ 1
  prefixFree : Prop

structure KraftInequalityEvidence (K : KraftInequalityPackage) where
  inequalityHoldsClosed : K.inequalityHolds
  prefixFreeClosed : K.prefixFree

def KraftInequalityClosed (K : KraftInequalityPackage) : Prop :=
  K.inequalityHolds ∧ K.prefixFree

theorem kraft_inequality_closed_from_evidence (K : KraftInequalityPackage)
    (Ev : KraftInequalityEvidence K) : KraftInequalityClosed K := by
  exact And.intro Ev.inequalityHoldsClosed Ev.prefixFreeClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse
