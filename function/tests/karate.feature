
Feature: Basic

Scenario: say-hello

	Given url karate.properties['testURL']

	And path '/'
	When method GET
	Then status 200
	And match $ ==
	"""
	{
        "hello": "world"
	}
	"""