library PatientHeightFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "SCT": 'http://snomed.info/sct'
code "Patient height": '1153637007' from SCT

context Patient

// define "Patient BMI":
//   [Observation: "Patient BMI"] BMI
// define "Patient Weight":
//   [Observation: "Patient weight"] Weight
// define "Patient Height Calculated":
//   square root of weight (kg) / BMI x 100

// /**
//  * @description
//  * Inferred patient height
//  */
// define "Patient Height Inferred":
//   if exists("Patient Height Observation") then
//     Observation {
//       meta: Meta {
//         profile: {
//           canonical { value: 'http://example.org/StructureDefinition/PatientHeightFeature' }
//         }
//       },
//       extension: {
//         Extension {
//           url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
//           value: canonical { value: 'http://example.org/StructureDefinition/PatientHeightFeature' }
//         },
//         Extension {
//           url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' },
//           value: code { value: 'inferred' }
//         }
//       },
//       status: ObservationStatus { value: 'final' },
//       effective: dateTime { value: Now() },
//       code: CodeableConcept {
//         coding: {
//           Coding {
//             system: uri { value: 'http://example.org/CodeSystem/CaseFeatureCodes' },
//             code: code { value: '' }
//           }
//         }
//       },
//       value: boolean { value: "Patient Height Calculated".value }
//     }
//   else null

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "Patient Height Asserted":
  Common.MostRecent([Observation: "Patient height"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
// define "Patient Height":
//   Coalesce(
//     "Patient Height Asserted",
//     "Patient Height Inferred"
//   )
define "Patient Height":
  "Patient Height Asserted"

