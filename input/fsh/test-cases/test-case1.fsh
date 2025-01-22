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

Instance: PatientHeightObservation1
InstanceOf: PatientHeight
Usage: #example
* status = #final
* category = $observation-category#vital-signs (exactly)
* code = $SCT#1153637007 "Body height measure (observable entity)"
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2025-01-15T00:00:00Z"
* valueQuantity
  * value = 50
  * unit = "cm"
  * code = #cm
  * system = "http://unitsofmeasure.org"

Instance: TestCase1
InstanceOf: Bundle
Description: "Test Case 1 Bundle"
* type = #collection
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Organization, Organization1)
* insert BundleEntry(Practitioner, Practitioner1)
* insert BundleEntry(Observation, PatientHeightObservation1)



