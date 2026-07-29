import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure KolmogorovComplexityPackage where
  stringType : Type u
  complexity : stringType → ℕ
  invariant : Prop
  chainRule : Prop
  randomnessDeficiency : stringType → ℕ

def KolmogorovComplexityClosed (K : KolmogorovComplexityPackage) : Prop :=
  K.invariant ∧ K.chainRule

theorem kolmogorov_complexity_closure (K : KolmogorovComplexityPackage) : KolmogorovComplexityClosed K := by
  exact And.intro K.invariant K.chainRule

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse