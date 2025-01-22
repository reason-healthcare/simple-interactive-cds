library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include PatientHeightFeatureLogic version '0.1.0' called PatientHeightFeature

context Patient

define "Height":
  if (PatientHeightFeature."Patient Height" is not null) then
    PatientHeightFeature."Patient Height".value as Quantity
  else
    null

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should recommend 10 cups of water daily if patient is greater than 180cm":
  if "Height".value >= 180 then
    true
  else
    false

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should recommend 8 cups of water daily if patient is less than 180cm":
  if "Height".value < 180 then
    true
  else
    false
