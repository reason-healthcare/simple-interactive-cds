Instance: PatientHeightQuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
* questionnaire = "Questionnaire/PatientHeight"
* status = #in-progress
* subject = Reference(Patient/Patient1)
* authored = "2025-01-15T10:00:00Z"
* item
  * linkId = "1"
  * definition = "http://fhir.org/test/StructureDefinition/PatientHeight"
  * text = "Patient Height Observation"
  * item
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaireresponse-author"
      * valueReference = Reference(http://cqframework.org/fhir/Device/clinical-quality-language)
    * linkId = "1.1"
    * definition = "http://fhir.org/test/StructureDefinition/PatientHeight#Observation.value[x]:valueQuantity"
    * text = "Patient Height in centimeters"
    * answer.valueQuantity = 181 'cm' "cm"