library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include HypertensionFeatureLogic version '0.1.0' called HypertensionFeature
include ChronicConditionFeatureLogic version '0.1.0' called ChronicConditionFeature

context Patient

define "Hypertension":
  if (HypertensionFeature."Hypertension" is not null) then
    HypertensionFeature."Hypertension".value as boolean
  else
    null

define "Chronic Condition":
  if (ChronicConditionFeature."Chronic Condition" is not null) then
    ChronicConditionFeature."Chronic Condition".value as boolean
  else
    null

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should recommend daily apple if hypertensive":
  if "Hypertension" then
    true
  else
    false

define "Should recommend normal diet if chronic conditions are not present":
  if "Chronic Condition" then
    false
  else
    true

