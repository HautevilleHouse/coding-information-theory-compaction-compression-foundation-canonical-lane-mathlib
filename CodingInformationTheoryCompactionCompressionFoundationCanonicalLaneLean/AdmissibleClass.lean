import CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CodingTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CodingTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CodingInformationTheoryCompactionCompressionFoundationCanonicalLaneLean
end HautevilleHouse