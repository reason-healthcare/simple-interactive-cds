library HypertensionFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "Hypertension Feature": 'hypertension-feature' from "CaseFeatureCodes"

valueset "Ace Inhibitor Medications": 'http://example.org/ValueSet/AceInhibitorVS'

context Patient

define "Active Ace Inhibitor Orders":
  [MedicationRequest: "Ace Inhibitor Medications"] AceInhibitor
    where AceInhibitor.status in { 'active' }

/**
 * @description
 * Inference if the patient is taking ACE inhibitors
 */
define "Hypertension Inferred":
  if exists("Active Ace Inhibitor Orders") then
    Observation {
      meta: Meta {
        profile: {
          canonical { value: 'http://example.org/StructureDefinition/HypertensionFeature' }
        }
      },
      extension: {
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
          value: canonical { value: 'http://example.org/StructureDefinition/HypertensionFeature' }
        },
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' },
          value: code { value: 'inferred' }
        }
      },
      status: ObservationStatus { value: 'final' },
      effective: dateTime { value: Now() },
      code: CodeableConcept {
        coding: {
          Coding {
            system: uri { value: 'http://example.org/CodeSystem/CaseFeatureCodes' },
            code: code { value: 'hypertension-feature' }
          }
        }
      },
      value: boolean { value: true }
    }
  else null

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "Hypertension Asserted":
  Common.MostRecent([Observation: "Hypertension Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */

define "Hypertension":
  Coalesce(
    "Hypertension Asserted",
    "Hypertension Inferred"
  )
