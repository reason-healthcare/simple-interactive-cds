Profile: ChronicConditionFeature
Parent: Observation
Title: "Chronic Condition Feature"
Description: "Chronic Condition Feature"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(ChronicConditionFeatureLogic, Chronic Condition)
* code = http://example.org/CodeSystem/CaseFeatureCodes#no-chronic-conditions-feature (exactly)
* status = #final (exactly)
* value[x] 1..1 MS
* value[x] only boolean
  * ^short = "Has one or more chronic conditions"
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ChronicConditionFeature#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ChronicConditionFeature#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"