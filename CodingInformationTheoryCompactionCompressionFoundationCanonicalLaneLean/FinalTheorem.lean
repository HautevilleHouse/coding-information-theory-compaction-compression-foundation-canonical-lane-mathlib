import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

def ConstrainedCodingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coding_endgame (A : AdmissibleClass) :
    ConstrainedCodingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse