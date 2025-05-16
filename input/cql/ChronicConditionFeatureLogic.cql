library ChronicConditionFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "Chronic Condition Feature": 'no-chronic-conditions-feature' from "CaseFeatureCodes"

valueset "Chronic condition codes": 'http://example.org/ValueSet/ChronicConditionVS'

context Patient

define "Chronic Condition Asserted":
  Common.MostRecent([Observation: "Chronic Condition Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */

define "Chronic Condition":
  "Chronic Condition Asserted"

  // Coalesce(
  //   "Chronic Condition Asserted",
  //   "Chronic Condition Inferred"
  // )
