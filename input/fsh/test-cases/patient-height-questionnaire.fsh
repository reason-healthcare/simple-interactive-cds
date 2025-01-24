Instance: PatientHeightQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* extension[sdc-questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#patient "Patient"
  * extension[type].valueCode = #Patient
* extension[sdc-questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#encounter "Encounter"
  * extension[type].valueCode = #Encounter
* extension[sdc-questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#user "User"
  * extension[type].valueCode = #Practitioner
* extension[sdc-questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#location "Location"
  * extension[type].valueCode = #Location
* extension[sdc-questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#study "ResearchStudy"
  * extension[type].valueCode = #ResearchStudy
* version = "null-2025-01-14-08.55.57"
* status = #active
* item[+]
  * extension[sdc-questionnaire-definitionExtract]/valueCanonical = Canonical(PatientHeightFeature)
  * extension[sdc-questionnaire-definitionExtractValue]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/PatientHeightFeature#Observation.subject"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.subject"
  * extension[sdc-questionnaire-definitionExtractValue]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/PatientHeightFeature#Observation.effective[x]"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.authored"
  * extension[sdc-questionnaire-itemPopulationContext].valueExpression
    * name = "PatientHeightQuestionnaire"
    * language = #text/cql-identifier
    * expression = "PatientHeight"
    * reference = Canonical(PatientHeightFeatureLogic)
  * linkId = "1"
  * definition = "http://fhir.org/test/StructureDefinition/PatientHeightFeature"
  * text = "Patient Height Observation"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/cql-expression
        * expression = "%PatientHeightFeature.value"
    * linkId = "1.1"
    * definition = "http://fhir.org/test/StructureDefinition/PatientHeightFeature#Observation.value[x]:valueQuantity"
    * text = "Patient Height in centimeters"
    * type = #quantity
    * required = true
    * repeats = false