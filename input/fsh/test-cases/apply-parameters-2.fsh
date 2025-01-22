Instance: ApplyParameters2
InstanceOf: Parameters
Usage: #example
* parameter[0]
  * name = "url"
  * valueString = "http://example.org/PlanDefinition/DrinkWaterRecommendation"
* parameter[+]
  * name = "data"
  * resource = TestCase1
* parameter[+]
  * name = "subject"
  * valueString = "Patient/Patient1"