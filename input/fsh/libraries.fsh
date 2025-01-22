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

Instance: PatientHeightFeatureLogic
InstanceOf: Library
Usage: #definition
Title: "Patient Height Feature Logic"
* insert DefinitionMetadata(PatientHeightFeatureLogic, Library)
* description = "Case Feature Definition Logic for Patient Height"
* type = $library-type#logic-library
* content.id = "ig-loader-PatientHeightFeatureLogic.cql"

Instance: ApplicabilityLogic
InstanceOf: Library
Usage: #definition
Title: "Applicability Logic"
* insert DefinitionMetadata(ApplicabilityLogic, Library)
* description = "Applicability Logic Library"
* type = $library-type#logic-library
* content.id = "ig-loader-ApplicabilityLogic.cql"
