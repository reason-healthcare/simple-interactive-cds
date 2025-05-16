Instance: FHIRHelpers
InstanceOf: Library
Usage: #definition
* insert DefinitionMetadata(FHIRHelpers, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"

Instance: FHIRCommon
InstanceOf: Library
Usage: #definition
* insert DefinitionMetadata(FHIRCommon, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRCommon.cql"

Instance: Common
InstanceOf: Library
Usage: #definition
* insert DefinitionMetadata(Common, Library)
* description = "Common Library"
* type = $library-type#logic-library
* content.id = "ig-loader-Common.cql"

Instance: HypertensionFeatureLogic
InstanceOf: Library
Usage: #definition
Title: "Patient Height Feature Logic"
* insert DefinitionMetadata(HypertensionFeatureLogic, Library)
* description = "Case Feature Definition Logic for Hypertension"
* type = $library-type#logic-library
* content.id = "ig-loader-HypertensionFeatureLogic.cql"

Instance: ChronicConditionFeatureLogic
InstanceOf: Library
Usage: #definition
Title: "Patient Height Feature Logic"
* insert DefinitionMetadata(ChronicConditionFeatureLogic, Library)
* description = "Case Feature Definition Logic for Chronic Condition"
* type = $library-type#logic-library
* content.id = "ig-loader-ChronicConditionFeatureLogic.cql"

Instance: ApplicabilityLogic
InstanceOf: Library
Usage: #definition
Title: "Applicability Logic"
* insert DefinitionMetadata(ApplicabilityLogic, Library)
* description = "Applicability Logic Library"
* type = $library-type#logic-library
* content.id = "ig-loader-ApplicabilityLogic.cql"
