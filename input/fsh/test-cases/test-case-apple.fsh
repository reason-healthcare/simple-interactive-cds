Instance: Patient1
InstanceOf: Patient
Description: "Test Case"
* name
  * given[0] = "Patient 1"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient1)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(Practitioner1)
* serviceProvider = Reference(Organization1)

Instance: Practitioner1
InstanceOf: Practitioner
Usage: #example
* name.family = "practitioner"

Instance: Organization1
InstanceOf: Organization
Usage: #example
* name = "organization"

// Instance: AceInhibitorMedicationRequest
// InstanceOf: MedicationRequest
// Usage: #example
// * status = #active
// * intent = #order
// * subject = Reference(Patient/Patient1)
// * medicationCodeableConcept = $RXNORM#104384 "ramipril 2.5 MG Oral Capsule [Altace]"

Instance: HypertensionObservation
InstanceOf: HypertensionFeature
Usage: #example
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#hypertension-feature
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2025-01-15T00:00:00Z"
* valueBoolean = false
* performer = Reference(Practitioner/Practitioner1)

// Instance: ChronicConditionObservation
// InstanceOf: ChronicConditionFeature
// Usage: #example
// * status = #final
// * code = http://example.org/CodeSystem/CaseFeatureCodes#no-chronic-conditions-feature
// * subject = Reference(Patient/Patient1)
// * effectiveDateTime = "2025-01-14T00:00:00Z"
// * valueBoolean = false
// * performer = Reference(Practitioner/Practitioner1)

Instance: TestCase1
InstanceOf: Bundle
Description: "Test Case 1 Bundle"
* meta.tag = #test
* type = #collection
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Organization, Organization1)
* insert BundleEntry(Practitioner, Practitioner1)
// * insert BundleEntry(MedicationRequest, AceInhibitorMedicationRequest)
* insert BundleEntry(Observation, HypertensionObservation)
// * insert BundleEntry(Observation, ChronicConditionObservation)



