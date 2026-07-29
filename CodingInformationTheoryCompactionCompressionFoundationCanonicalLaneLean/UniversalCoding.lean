import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure UniversalCodingPackage where
  sourceAlphabet : Type u
  code : Type v
  redundancyRate : ℝ
  universality : Prop
  adaptivity : Prop

def UniversalCodingClosed (U : UniversalCodingPackage) : Prop :=
  U.universality ∧ U.adaptivity

theorem universal_coding_closure (U : UniversalCodingPackage) : UniversalCodingClosed U := by
  exact And.intro U.universality U.adaptivity

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse