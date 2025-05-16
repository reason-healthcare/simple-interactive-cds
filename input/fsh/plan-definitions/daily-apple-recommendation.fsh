Instance: DailyAppleRecommendation
InstanceOf: CPGRecommendationDefinition
Usage: #definition
Title: "Daily Apple Recommendation"
* insert DefinitionMetadata(DailyAppleRecommendation, PlanDefinition)
* description = "Recommendation to eat an apple daily for hypertension"
* library[+] = Canonical(ApplicabilityLogic|0.1.0)
* action[+]
  * id = "daily-apple-recommendation"
  * title = "Recommend daily apple for hypertension"
  * description = "Recommend daily apple for hypertension"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend daily apple if hypertensive"
  * input[+]
    * type = #Observation
    * profile = Canonical(HypertensionFeature|0.1.0)
  * code = $cpg-common-process#guideline-based-care
  * definitionCanonical = Canonical(DailyAppleActivity)
* action[+]
  * id = "continue-normal-diet"
  * title = "Continue normal diet"
  * description = "Continue normal diet"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend normal diet if chronic conditions are not present"
  * input[+]
    * type = #Observation
    * profile = Canonical(ChronicConditionFeature|0.1.0)
  * code = $cpg-common-process#guideline-based-care
  * textEquivalent = "Continue normal diet"

