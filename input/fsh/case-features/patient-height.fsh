Profile: PatientHeight
Parent: Observation
Id: PatientHeight
Title: "Patient Height"
Description: "Patient Height Feature"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(PatientHeightFeatureLogic, Patient Height)
* category = $observation-category#vital-signs (exactly)
  * ^short = "Vital Signs"
  * ^definition = "Vital Signs"
// * code contains PatientHeightCode 1..1
* code = $SCT#1153637007 "Body height measure (observable entity)" (exactly)
  * ^short = "Patient Height in centimeters"
  * ^definition = "Patient Height in centimeters"
* valueQuantity 1..1 MS
* valueQuantity only Quantity
  * ^sliceName = "valueQuantity"
  * ^short = "Patient Height in centimeters"
  * ^definition = "Patient Height in centimeters"
  * value 1.. MS
  * unit 1.. MS
  * unit = "cm" (exactly)
  * code = #cm (exactly)
  * code 1..
    * ^short = "cm"
    * ^definition = "Centimeters"
  * system = "http://unitsofmeasure.org" (exactly)
  * system 1.. MS
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/PatientHeight#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/PatientHeight#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"