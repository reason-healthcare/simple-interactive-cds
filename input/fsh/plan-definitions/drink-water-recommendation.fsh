Instance: DrinkWaterRecommendation
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
Title: "Drink Water Recommendation"
* insert DefinitionMetadata(DrinkWaterRecommendation, PlanDefinition)
* description = "Recommendation to drink water"
* library[+] = Canonical(ApplicabilityLogic)
* action[+]
  * title = "Recommend 8 cups of water daily"
  * description = "Recommend 8 cups of water daily"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend 8 cups of water daily if patient is less than 180cm"
  * input[+]
    * type = #Observation
    * profile = Canonical(PatientHeight)
  * code = $cpg-common-process#alerts-reminders-education
  * definitionCanonical = Canonical(Drink8CupsWaterMessage)
* action[+]
  * title = "Recommend 10 cups of water daily"
  * description = "Recommend 10 cups of water daily"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend 10 cups of water daily if patient is greater than 180cm"
  * input[+]
    * type = #Observation
    * profile = Canonical(PatientHeight)
  * code = $cpg-common-process#alerts-reminders-education
  * definitionCanonical = Canonical(Drink10CupsWaterMessage)
