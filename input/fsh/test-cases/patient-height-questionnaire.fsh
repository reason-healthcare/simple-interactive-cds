Instance: PatientHeightQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#patient "Patient"
  * extension[+]
    * url = "type"
    * valueCode = #Patient
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#encounter "Encounter"
  * extension[+]
    * url = "type"
    * valueCode = #Encounter
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#user "User"
  * extension[+]
    * url = "type"
    * valueCode = #Practitioner
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#location "Location"
  * extension[+]
    * url = "type"
    * valueCode = #Location
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#study "ResearchStudy"
  * extension[+]
    * url = "type"
    * valueCode = #ResearchStudy
* version = "null-2025-01-14-08.55.57"
* status = #active
* item
  * extension[0]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
    * valueCanonical = "http://fhir.org/test/StructureDefinition/PatientHeightQuestionnaire"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    * extension[0]
      * url = "definition"
      * valueCanonical = "http://fhir.org/test/StructureDefinition/PatientHeightQuestionnaire#Observation.subject"
    * extension[+]
      * url = "expression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%resource.subject"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    * extension[0]
      * url = "definition"
      * valueCanonical = "http://fhir.org/test/StructureDefinition/PatientHeightQuestionnaire#Observation.effective[x]"
    * extension[+]
      * url = "expression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%resource.authored"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
    * valueExpression
      * name = "PatientHeightQuestionnaire"
      * language = #text/cql-identifier
      * expression = "PatientHeight"
      * reference = "http://fhir.org/test/Library/PatientHeightQuestionnaire"
  * linkId = "1"
  * definition = "http://fhir.org/test/StructureDefinition/PatientHeightQuestionnaire"
  * text = "Patient Height Observation"
  * type = #group
  * item
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/cql-expression
        * expression = "%PatientHeightQuestionnaire.value"
    * linkId = "1.1"
    * definition = "http://fhir.org/test/StructureDefinition/PatientHeightQuestionnaire#Observation.value[x]:valueQuantity"
    * text = "Patient Height in centimeters"
    * type = #quantity
    * required = true
    * repeats = false