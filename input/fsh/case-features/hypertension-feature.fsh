Profile: HypertensionFeature
Parent: Observation
Title: "Hypertension Feature"
Description: "Hypertension Feature"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(HypertensionFeatureLogic, Hypertension)
* code = http://example.org/CodeSystem/CaseFeatureCodes#hypertension-feature (exactly)
* status = #final (exactly)
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Diagnosis of hypertension"
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/HypertensionFeature#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/HypertensionFeature#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"