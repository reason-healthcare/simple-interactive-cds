Profile: PatientHeight
Parent: Observation
Id: PatientHeight
Title: "Patient Height"
Description: "Patient Height Feature"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(PatientHeightFeatureLogic, Patient Height)
* category 1..1
* category only CodeableConcept
* category = $observation-category#vital-signs (exactly)
  * ^short = "Vital Signs"
  * ^definition = "Vital Signs"
// * code contains PatientHeightCode 1..1
* code only CodeableConcept
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
* subject only Reference(Patient)
  * ^extension[0].extension[0].url = "definition"
  * ^extension[=].extension[=].valueCanonical = "http://fhir.org/test/StructureDefinition/PatientHeight#Observation.subject"
  * ^extension[=].extension[+].url = "expression"
  * ^extension[=].extension[=].valueExpression.language = #text/fhirpath
  * ^extension[=].extension[=].valueExpression.expression = "%resource.subject"
  * ^extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * ^short = "Who the observation is about"
  * ^definition = "The patient this observation is about."
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[0].extension[0].url = "definition"
  * ^extension[=].extension[=].valueCanonical = "http://fhir.org/test/StructureDefinition/PatientHeight#Observation.effective[x]"
  * ^extension[=].extension[+].url = "expression"
  * ^extension[=].extension[=].valueExpression.language = #text/fhirpath
  * ^extension[=].extension[=].valueExpression.expression = "%resource.authored"
  * ^extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * ^short = "Clinically relevant time for observation"
  * ^definition = "The time the observed value is asserted as being true."