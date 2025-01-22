Instance: PatientHeightObservation2
InstanceOf: PatientHeight
Usage: #example
* derivedFrom = Reference(PatientHeightQuestionnaireResponse2)
* status = #final
* category = $observation-category#vital-signs (exactly)
* code = $SCT#1153637007 "Body height measure (observable entity)"
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2025-01-15T10:00:00Z"
* valueQuantity
  * value = 181
  * unit = "cm"
  * code = #cm
  * system = "http://unitsofmeasure.org"

Instance: TestCase2
InstanceOf: Bundle
Description: "Test Case 2 Bundle"
* type = #collection
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Organization, Organization1)
* insert BundleEntry(Practitioner, Practitioner1)
* insert BundleEntry(Observation, PatientHeightObservation2)