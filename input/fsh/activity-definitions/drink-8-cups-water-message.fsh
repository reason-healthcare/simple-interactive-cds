Instance: Drink8CupsWaterMessage
InstanceOf: CPGCommunicationActivity
Usage: #definition
Title: "Drink 8 Cups Water Message"
Description: "Drink 8 Cups Water Message"
* name = "Drink 8 Cups Water Message"
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = $cpg-activity-type-cs#send-message "Send a message"
* intent = #proposal
* doNotPerform = false
* status = #draft
* dynamicValue[+]
  * path = "payload[0].contentString"
  * expression
    * language = #text/fhirpath
    * expression = "'This is your reminder to drink 8 cups of water daily'"