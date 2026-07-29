import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure DataCompactionPackage where
  sourceData : Type u
  compactionFunction : sourceData → compactRepresentation
  reconstructionFunction : compactRepresentation → sourceData
  compactionRatio : ℝ
  informationLoss : Prop
  dataCompactionTheoremStatement : Prop

structure DataCompactionEvidence (D : DataCompactionPackage) where
  dataCompactionTheoremClosed : D.dataCompactionTheoremStatement

def DataCompactionClosed (D : DataCompactionPackage) : Prop :=
  D.dataCompactionTheoremStatement

theorem data_compaction_closed_from_evidence (D : DataCompactionPackage)
    (E : DataCompactionEvidence D) : DataCompactionClosed D :=
  E.dataCompactionTheoremClosed

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse