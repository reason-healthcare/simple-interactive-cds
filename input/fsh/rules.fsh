RuleSet: DefinitionMetadata(id, type)
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* version = "0.1.0"
* status = #draft
* experimental = true

RuleSet: ConformanceMetadata
* ^meta.profile = $cpg-casefeaturedefinition
* ^experimental = true

RuleSet: CaseFeatureExpressions(reference, baseExpression)
* ^extension[$cpg-inferenceExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-inferenceExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-inferenceExpression].valueExpression.expression = "{baseExpression} Inference"
* ^extension[$cpg-assertionExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-assertionExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-assertionExpression].valueExpression.expression = "{baseExpression} Assertion"
* ^extension[$cpg-featureExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-featureExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-featureExpression].valueExpression.expression = "{baseExpression}"

RuleSet: BundleEntryPut(resourceUrl)
* fullUrl = "http://example.org/{resourceUrl}"
* request
  * method = #PUT
  * url = "{resourceUrl}"

RuleSet: QuestionnaireMetaData(id)
* url = "http://questionnaire-processor/Questionnaire/{id}"
* status = #draft

RuleSet: QuestionnaireItem(id, path)
* linkId = "{id}#{path}"
* definition = "http://example.org/StructureDefinition/{id}#{path}"

RuleSet: BundleEntry(resourceType, id)
* entry[+]
  * fullUrl = "http://example.org/{resourceType}/{id}"
  * resource = {id}

RuleSet: QuestionnaireBundleEntry(id)
* entry[+]
  * fullUrl = "http://questionnaire-processor/Questionnaire/{id}"
  * resource = {id}

RuleSet: QuestionnaireResponseMetaData(questionnaireId)
* questionnaire = Canonical({questionnaireId})
* status = #completed
