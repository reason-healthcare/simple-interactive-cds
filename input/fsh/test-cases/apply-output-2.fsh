Instance: ApplyOutput2
InstanceOf: Bundle
Usage: #example
Description: "Test case 2 bundle from $apply"
* type = #collection
* entry[0]
  * fullUrl = "http://apply-processor/RequestGroup/DrinkWaterRequestGroup2"
  * resource = DrinkWaterRequestGroup2
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/DrinkWaterMessage2"
  * resource = DrinkWaterMessage2

Instance: DrinkWaterRequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.org/PlanDefinition/DrinkWaterRecommendation|0.1.0"
* action
  * title = "Recommend 10 cups of water daily"
  * description = "Recommend 10 cups of water daily"
  * code = $cpg-common-process#alerts-reminders-education
  * type = $action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should recommend 10 cups of water daily if patient is greater than 180cm"
  * resource = Reference(DrinkWaterMessage2)

Instance: DrinkWaterMessage2
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* subject = Reference(Patient/Patient1)
* doNotPerform = false
* payload.contentString = "This is your reminder to drink 10 cups of water daily"