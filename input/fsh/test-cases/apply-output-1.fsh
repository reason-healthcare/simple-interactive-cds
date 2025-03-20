Instance: ApplyOutput1
InstanceOf: Bundle
Usage: #example
Description: "Test case 1 bundle from $apply"
* type = #collection
* entry[0]
  * fullUrl = "http://apply-processor/RequestGroup/DrinkWaterRequestGroup1"
  * resource = DrinkWaterRequestGroup1
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/DrinkWaterMessage1"
  * resource = DrinkWaterMessage1

Instance: DrinkWaterRequestGroup1
InstanceOf: RequestGroup
Usage: #example
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.org/PlanDefinition/DrinkWaterRecommendation|0.1.0"
* action
  * title = "Recommend 8 cups of water daily"
  * description = "Recommend 8 cups of water daily"
  * code = $cpg-common-process#alerts-reminders-education
  * type = $action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend 8 cups of water daily if patient is less than 180cm"
  * resource = Reference(DrinkWaterMessage1)

Instance: DrinkWaterMessage1
InstanceOf: CommunicationRequest
Usage: #example
* status = #draft
* subject = Reference(Patient/Patient1)
* doNotPerform = false
* payload.contentString = "This is your reminder to drink 8 cups of water daily"