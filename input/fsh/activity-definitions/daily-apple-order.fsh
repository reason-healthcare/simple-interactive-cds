Instance: DailyAppleActivity
InstanceOf: ActivityDefinition
Usage: #example
* insert DefinitionMetadata(DailyAppleActivity, ActivityDefinition)
* title = "Daily Apple Activity"
* description = "Activity to provide an apple daily"
* kind = #MedicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* intent = #proposal
* priority = #routine
* productCodeableConcept = $sct#735215001 "Apple (substance)"
* productCodeableConcept.text = "Apple"
* dosage.timing.repeat
  * frequency = 1
  * period = 1
  * periodUnit = #d
* dosage.doseAndRate
  * doseQuantity = 1 '{apple}' "apple"
  * rateQuantity.value = 1